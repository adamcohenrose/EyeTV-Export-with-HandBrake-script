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
    echo "Usage: `basename "$0"` /path/to/HandBrakeCLI /path/to/input.mpg /path/to/output.mkv preset_name priority=5"
    echo "       creates \"/path/to/output.mkv\" encoded using preset_name"
    if [ $# -gt 0 ]; then
        echo "Error: $1"
    fi
    if [ $# -gt 1 ]; then
        exit $2
    else
        exit 1
    fi
}

function other_encodes_are_still_running() {
    # check to see if the user is already running HandBrakeCLI
    handbrakeRunning=`ps -xww -o pid,state,command | /usr/bin/perl -ne 'print if m!\d+\s+[RU].{4}'${HANDBRAKECLI}'!'`
    # check to see if we are the lowest priority encode script waiting
    lowestPriorityRunning=`ps -xww -o command | grep "$0" | grep -v grep | sed -E "s/^.*priority=([[:digit:]]+)$/\1/" | sort | head -1`

    # debug
    echo "lowPri: ${priority} > ${lowestPriorityRunning}; HB running: <${handbrakeRunning}>" >&2

    if [ -n "${handbrakeRunning}" ]; then
        echo 2
    elif [ ${priority} -gt ${lowestPriorityRunning} ]; then
        echo 1
    else
        echo 0
    fi
}

if [ $# -ne 7 ]; then
    usage_and_exit "Incorrect number of parameters provided to script: `basename $0` $*"
fi

export HANDBRAKECLI=$1
export inputpath=$2
export outputpath=$3
export presetname=$4
export recordingname=$5
export logfilepath=$6
export priorityarg=$7

# fetch the priority number
export priority=`echo ${priorityarg} | sed -E "s/^priority=([[:digit:]]+)$/\1/"`

echo "`date`: starting $0"
sleep 2 # to let other handbrake encoders start
while [ `other_encodes_are_still_running` -gt 0 ]; do
    sleep 10
    echo "`date`: waiting for other encodes to finish"
done

echo "`date`: starting HandBrake encode"
$HANDBRAKECLI -i "${inputfilepath}" -o "${outputdir}/${outputfilename}" --preset "${presetname}"
handbrakeReturnValue=$?
echo "`date`: HandBrake encode finished with exit code ${handbrakeReturnValue}"

# call growl/osascript dialog when handbrake encode is finished
scriptpath=`dirname "$0"`
/usr/bin/osascript "${scriptpath}/notifyEncodingFinished.scpt" "${handbrakeReturnValue}" "${recordingname}" "Log available at ${logfilepath}"