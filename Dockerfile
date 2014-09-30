FROM centos:latest
RUN yum install -y git
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' > /etc/profile.d/rbenv-path-setup.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv-path-setup.sh

CMD ["/bin/bash","--login"]
