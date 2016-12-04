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

#Install ASP.NET 4.5
dsc_script 'Web-Asp-Net45' do
  code <<-EOH
  WindowsFeature Installaspdotnet45
  {
     Name = "Web-Asp-Net45"
     Ensure = "Present"
  }
 EOH
end

#Enable IIS Management console
dsc_script 'Web-Management-Console' do
  code <<-EOH
  WindowsFeature InstallIISconsole
  {
     Name = "Web-Mgmt-Console"
     Ensure = "Present"
  }
 EOH
end

