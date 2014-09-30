FROM centos:latest
RUN yum install -y git tar gcc make
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > /etc/profile.d/rbenv-path-setup.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv-path-setup.sh
RUN /bin/bash --login -c 'rbenv install 2.1.3'

CMD ["/bin/bash","--login"]
