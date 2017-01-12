.PHONY: all rake

BUNDLE_PATH ?= vendor/bundle

all:
	export BUNDLE_GEMFILE=`pwd`/Gemfile && export PATH=/opt/puppetlabs/puppet/bin:$(PATH) && bundle install --jobs=3 --retry=3 --path=$(BUNDLE_PATH)

rake:
	export PATH=/opt/puppetlabs/puppet/bin:$(PATH) && bundle exec rake

