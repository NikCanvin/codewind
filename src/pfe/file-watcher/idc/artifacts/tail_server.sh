#!/bin/bash
#*******************************************************************************
# Copyright (c) 2019 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html
#
# Contributors:
#     IBM Corporation - initial API and implementation
#*******************************************************************************

source $HOME/artifacts/envvars.sh

if [ "$HOST_OS" == "windows" ]; then
	OUTPUT_DIR=/tmp/liberty
else
	OUTPUT_DIR=$HOME/app/mc-target
fi

tail --lines=120 -f $OUTPUT_DIR/liberty/wlp/usr/servers/defaultServer/logs/messages.log
