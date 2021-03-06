#!/bin/bash

##############################################################################
# Copyright (c) 2015 Huawei Technologies Co.,Ltd and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Apache License, Version 2.0
# which accompanies this distribution, and is available at
# http://www.apache.org/licenses/LICENSE-2.0
##############################################################################

# check wether the host is running

set -e

host_ip=$1
shift
options="$@"

ping -c 1 $options $host_ip | grep ttl | wc -l
EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    exit 1
else
    echo "running"
fi
