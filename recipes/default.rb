#
# Cookbook Name:: powerline-chef-baseline
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt'

include_recipe 'powerline-chef-baseline::apt'
include_recipe 'powerline-chef-baseline::users'

# Install curl
package ['curl']
