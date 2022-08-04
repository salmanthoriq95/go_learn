# Setup GOPATH and PATH env variables. use source command or just single dot, example: . setup.sh
export GOPATH=${PWD};
export PATH=$PATH:${PWD}/bin;
echo "GOPATH and PATH variables has been changed!"