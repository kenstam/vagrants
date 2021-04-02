sudo apt-get -y install curl git-core python-software-properties build-essential libxml2 libxml2-dev libxslt1-dev libreadline-dev imagemagick libssl-dev zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"'               >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo -H -u vagrant bash -i -c 'rbenv install 2.3.3'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
sudo -H -u vagrant bash -i -c 'rbenv global 2.3.3'
sudo -H -u vagrant bash -i -c 'gem install bundler --version 1.17.3 --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
