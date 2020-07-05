# install the cli
sudo apt-get install awscli;

# install credentials
mkdir ~/.aws;
touch ~/.aws/credentials;
echo "
[default]
aws_access_key_id = __ID__
aws_secret_access_key = __KEY__
region=us-east-1
" >> ~/.aws/credentials;

# check you're logged in:
aws sts get-caller-identity
