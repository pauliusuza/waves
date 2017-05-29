#! /bin/bash

# techypaul @ https://rated.gd

aws cloudformation create-stack \
  --stack-name waves-node \
  --template-body file://cloudformation-waves.json \
  --capabilities CAPABILITY_IAM \
  --parameters \
    ParameterKey=ElasticIP,ParameterValue=<elastic ip> \
    ParameterKey=InstanceType,ParameterValue=t2.small \
    ParameterKey=KeyName,ParameterValue=<your aws username for SSH key> \
    ParameterKey=AvZoneA,ParameterValue=eu-west-1a \
    ParameterKey=AvZoneB,ParameterValue=eu-west-1b \
    ParameterKey=AvZoneC,ParameterValue=eu-west-1c \
    ParameterKey=SubnetPublicA,ParameterValue=subnet-???????? \
    ParameterKey=SubnetPublicB,ParameterValue=subnet-???????? \
    ParameterKey=SubnetPublicC,ParameterValue=subnet-???????? \
    ParameterKey=SecurityGroup,ParameterValue=sg-???????? \
    ParameterKey=S3WavesBucketName,ParameterValue=<your new S3 bucket name> \
    ParameterKey=S3WavesTempBucketName,ParameterValue=<your new S3 bucket name> \
    ParameterKey=WavesJarURL,ParameterValue=https://github.com/wavesplatform/Waves/releases/download/v0.6.6/waves-0.6.6.jar \
    ParameterKey=WavesJarFile,ParameterValue=waves-0.6.6.jar \
    ParameterKey=WavesJavaOldVersion,ParameterValue=java-1.7.0 \
    ParameterKey=WavesJavaNewVersion,ParameterValue=java-1.8.0