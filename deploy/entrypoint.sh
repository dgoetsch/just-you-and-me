#!/bin/bash -x

TF_CMD=${TF_CMD:-"plan"}

STATE_BUCKET="just-you-and-me-cee8aed4-bea2-441f-8c91-76210c50f68c"
GC_PROJECT="just-you-and-me"
GC_REGION="us-central1"
DEPLOYMENT_NAME="just-you-and-me-master"
ls -lah /mnt
terraform init \
    -backend-config=bucket=$STATE_BUCKET \
    -backend-config=project=$GC_PROJECT \
    -backend-config=region=$GC_REGION \
    -backend-config=prefix=$DEPLOYMENT_NAME \
    -var-file=/mnt/config/defaults.tf \
    -input=false \
    /mnt/terraform/

terraform $TF_CMD \
    -var-file=/mnt/config/defaults.tf \
    -input=false \
    -auto-approve \
    /mnt/terraform/
