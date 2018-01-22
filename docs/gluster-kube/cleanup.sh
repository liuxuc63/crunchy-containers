#!/bin/bash
# Copyright 2018 Crunchy Data Solutions, Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


kubectl delete endpoints glusterfs-cluster
kubectl delete pvc gluster-pvc
kubectl delete pv gluster-pv
kubectl delete service glusterfs-cluster
kubectl delete service primary-gluster
kubectl delete pod primary-gluster

$CCPROOT/examples/waitforterm.sh primary-gluster kubectl
