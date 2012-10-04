directory "#{node[:release_dir]}/config" do
  mode 0755
end

template "#{node[:release_dir]}/config/unicorn.rb" do
  source "config.erb"
  mode 0644
end

directory "#{node[:release_dir]}/libexec" do
  mode 0755
end

template "#{node[:release_dir]}/libexec/server" do
  source "server.erb"
  mode 0755
end

template "#{node[:release_dir]}/libexec/unicorn_#{node[:app_name]}" do
  source "deploy.erb"
  mode 0755
end
