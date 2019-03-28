sudo apt-get -y install curl git-core python-software-properties build-essential libxml2 libxml2-dev libxslt1-dev libreadline-dev imagemagick libssl-dev zlib1g-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"'               >> ~/.bash_profile
source ~/.bash_profile
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

sudo -H -u vagrant bash -i -c 'rbenv install 2.3.3'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
sudo -H -u vagrant bash -i -c 'rbenv global 2.3.3'
sudo -H -u vagrant bash -i -c 'gem install bundler --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
