sudo yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"'               >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

sudo -H -u vagrant bash -i -c 'rbenv install 2.3.3'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
sudo -H -u vagrant bash -i -c 'rbenv global 2.3.3'
sudo -H -u vagrant bash -i -c 'gem install bundler --no-ri --no-rdoc'
sudo -H -u vagrant bash -i -c 'rbenv rehash'
