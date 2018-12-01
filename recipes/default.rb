package "nginx"

service "nginx" do
  action [:enable, :start]
end

file "/usr/share/nginx/html/index.html" do
  action :create
  content "<h1>Hello World</h1>"
  not_if { ::File.exists?("/usr/share/nginx/html/index.html") }
end
