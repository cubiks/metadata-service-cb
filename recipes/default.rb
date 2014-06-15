#
# Cookbook Name:: metadata-service-cb
# Recipe:: default
#
# Copyright 2014, Code-Playground
#
# All rights reserved - Do Not Redistribute
#

include_recipe "tomcat::default"

include_recipe "metadata-service-cb::apache"
include_recipe "metadata-service-cb::user"
include_recipe "metadata-service-cb::metadata-service"
