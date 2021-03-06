FROM sameersbn/gitlab:9.4.5

MAINTAINER Stakater

# Install the OpenID Connect strategy for OmniAuth
RUN cd /opt/gitlab/embedded/service/gitlab-rails \
    && printf "\n# OpenID Connect OmniAuth strategy\ngem 'omniauth-openid-connect'" >> Gemfile \
    && /opt/gitlab/embedded/bin/bundle install --without development test