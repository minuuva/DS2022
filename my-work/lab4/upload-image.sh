#!/bin/bash

curl https://logos-world.net/wp-content/uploads/2020/11/GitHub-Logo.png > github_logo.png

aws s3 cp github_logo.png s3://ds2022-qce2dp/

aws s3 presign --expires-in 604800 s3://ds2022-qce2dp/github_logo.png

final_url = 'https://ds2022-qce2dp.s3.us-east-1.amazonaws.com/github_logo.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAYXWBNV7KSLFKF7LC%2F20241003%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241003T142311Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=39b0c5386aea2db24edd5dc7286974de7a53c8c676be07cd82a235ac2b33f969'
