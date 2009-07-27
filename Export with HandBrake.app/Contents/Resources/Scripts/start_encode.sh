#!/bin/sh
#
# Copyright © 2009 Adam Cohen-Rose
#
# This file is part of the EyeTV Export with HandBrake script.
# 
# The EyeTV Export with HandBrake script is free software: you can
# redistribute it and/or modify it under the terms of the GNU
# General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option)
# any later version.
# 
# The EyeTV Export with HandBrake script is distributed in the hope
# that it will be useful, but WITHOUT ANY WARRANTY; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
# 
# You should have received a copy of the GNU General Public License
# along with the EyeTV Export with HandBrake script. If not, see
# <http://www.gnu.org/licenses/>

function usage_and_exit() {
    echo "Usage: `basename "$0"` /path/to/HandBrakeCLI /path/to/eyetv_recording.eyetv/000123.eyetvr 2009-07-23 preset_name /path/to/output_dir priority=5"
    echo "       creates \"/path/to/output_dir/eyetv_recording - 2009-07-23.mkv\" encoded using preset_name"
    if [ $# -gt 0 ]; then
        echo 1>&2 "Error: $1"
    fi
    if [ $# -gt 1 ]; then
        exit $2
    else
        exit 1
    fi
}

if [ $# -ne 6 ]; then
    usage_and_exit "Incorrect number of parameters provided to script: `basename "$0"` $*"
fi

export HANDBRAKECLI=$1
export eyetvrpath=$2
export outputtag=$3
export presetname=$4
export outputdir=$5
export priorityarg=$6
# remove any trailing slash from outputdir (for tidiness)
export outputdir=`echo "${outputdir}" | sed -E 's/\/$//'`


################
# SANITY CHECKS:

# check that eyetvrpath is an existing file
if [ ! -f "${eyetvrpath}" ]; then
    usage_and_exit "Input .eyetvr file \"${eyetvrpath}\" does not exist"
fi
# check that eyetvrpath ends with .eyetvr
inputpathext=`echo ${eyetvrpath} | sed -E 's/.*(\.eyetvr)$/\1/'`
if [ "${inputpathext}" != '.eyetvr' ]; then
    usage_and_exit "Input .eyetvr file \"${eyetvrpath}\" must end with .eyetvr"
fi
# check that outputpath is an existing directory
if [ ! -d "${outputdir}" ]; then
    usage_and_exit "Output directory \"${outputdir}\" must exist"
fi
# check that priorityarg is the correct format
priority=`echo "${priorityarg}" | sed -E "s/^priority=([[:digit:]]+)$/\1/"`
if [ ${priority} = ${priorityarg} ]; then # failed to match
    usage_and_exit "Must pass priority as priority=<number>"
fi


##################################
# PREPARE THE HANDBRAKE PARAMETERS

# find the input mpg file
export recordingdir=`dirname "${eyetvrpath}"`
export recordingname=`basename "${recordingdir}"`
export inputfilepath=`find "${recordingdir}" -name '*.mpg'`
inputfilecount=`echo "${inputfilepath}" | wc -l`
if [ "${inputfilecount}" -eq 0 ]; then
    usage_and_exit "Encoding \"${recordingname}\": no .mpg file found within package"
elif [ ${inputfilecount} -gt 1 ]; then
    echo ${inputfilecount}
    usage_and_exit "Encoding \"${recordingname}\": multiple .mpg files found within package"
fi

# check that the preset exists
export presetparams=`$HANDBRAKECLI --preset-list | grep "+ ${presetname}:"`
if [ -z "${presetparams}" ]; then
    usage_and_exit "Encoding \"${recordingname}\": Handbrake preset \"${presetname}\" is not a built-in preset"
fi
# find the output format for selected preset
export outputext=`echo ${presetparams} | sed -E 's/.*-f +([[:alnum:]]{3,4}).*/\1/'`
if [ ${#outputext} -lt 3 -o ${#outputext} -gt 4 ]; then
    usage_and_exit "Encoding \"${recordingname}\": Could not find output type for preset \"${presetname}\"\n\
Preset is defined as:\n${presetparams}"
fi

# calculate the output filename (replace the extension, remove any trailing [#] and add the tag)
export outputfilename=`echo "${recordingname}" | sed -E "s/(\[[[:digit:]]+\])?\.eyetv$/ - ${outputtag}.${outputext}/"`

# prepare log file
export logfiledir="${HOME}/Library/Logs/EyeTV_Export_with_HandBrake"
/bin/mkdir -p "${logfiledir}/"
if [ ! -d ${logfiledir} ]; then
    usage_and_exit "Encoding \"${recordingname}\": Could not create log directory ${logfiledir}"
fi
export logfilepath="${logfiledir}/exporting_${recordingname}.$$.log"
echo "`date`: $0 $*" > ${logfilepath}
echo "Encoding \"${recordingname}\" to \"${outputdir}/${outputfilename}\"" >> ${logfilepath}

# TODO: in future could compress/delete old logfiles
# might want to use lsof -t <filenames> to find which files are still in use

##############################################
# START THE HANDBRAKE ENCODE IN THE BACKGROUND

# start handbrake encoding in background
scriptpath=`dirname "$0"`
"${scriptpath}/run_handbrake_eyetv_encode.sh" "${HANDBRAKECLI}" "${inputfilepath}" "${outputdir}/${outputfilename}" "${presetname}" "${recordingname}" "${logfilepath}" "${priorityarg}" >> ${logfilepath} 2>&1 &

echo "Encoding \"${recordingname}\" to \"${outputdir}/${outputfilename}\""
exit 0