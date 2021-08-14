#!/bin/bash

sudo alp json --file=/var/log/envoy/access.log -r -m "/api/admin/clarifications/.+,/admin/clarifications/.+,/api/contestant/benchmark_jobs/.+,/contestant/benchmark_jobs/.+" --sort=sum
bash `dirname $0`/create-issue-with-alp.sh
