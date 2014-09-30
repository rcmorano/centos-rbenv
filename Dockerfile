FROM centos:latest
RUN yum install -y git tar gcc make curl-devel expat-devel gettext-devel readline-devel openssl-devel gcc-c++ autoconf 
RUN git clone https://github.com/sstephenson/rbenv.git .rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git .rbenv/plugins/ruby-build
RUN echo 'export PATH="/.rbenv/bin:$PATH"' > /etc/profile.d/rbenv-path-setup.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv-path-setup.sh
RUN /.rbenv/bin/rbenv install 2.1.3

CMD ["/bin/bash","--login"]
