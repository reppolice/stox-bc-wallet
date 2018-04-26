curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
./awscli-bundle/install -b ~/bin/aws
export PATH=~/bin:$PATH#
LOGIN=$(aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION)
echo $LOGIN
$LOGIN
docker push $IMAGE_NAME
