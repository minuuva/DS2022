#!/bin/bash

curl https://www.git-scm.com/images/logos/downloads/Git-Icon-1788C.png > git_logo.png

aws s3 cp git_logo.png s3://ds2022-qce2dp/

aws s3 presign --expires-in 604800 s3://ds2022-qce2dp/git_logo.png
