#
# Cookbook Name:: metadata-service-cb
# Recipe:: default
#
# Copyright 2014, Code-Playground
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"
include_recipe "metadata-service-cb::git"
include_recipe "metadata-service-cb::apache"
include_recipe "java::default"
include_recipe "maven::default"
include_recipe "tomcat::default"

include_recipe "metadata-service-cb::user"
include_recipe "metadata-service-cb::metadata-service"
