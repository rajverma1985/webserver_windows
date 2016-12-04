#
# Cookbook Name:: webserver_windows
# Recipe:: webserver_install
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#Enable IIS role
dsc_script 'Web-Server' do
  code <<-EOH
  WindowsFeature InstallWebserver
  {
     Name = "Web-Server"
     Ensure = "Present"
  }
 EOH
end
