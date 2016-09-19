#
# Cookbook Name:: powerline-chef-baseline
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'

include_recipe 'powerline-chef-baseline::apt'
include_recipe 'powerline-chef-baseline::users'
include_recipe 'powerline-chef-baseline::dirs'

# Install curl
package ['curl']

# ntp
cron 'ntp' do
  time :daily
  job "ntpdate ntp.ubuntu.com"
  user "root"
end
