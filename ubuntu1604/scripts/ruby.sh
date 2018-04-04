apt-get install build-essential software-properties-common
apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install -y ruby2.3 ruby2.3-dev ruby-switch
ruby-switch --set ruby2.3
gem install bundler --no-ri --no-rdoc
