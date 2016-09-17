
# Basic directories for all powerline servers

%w{/srv/log /srv/config}.each do |d|
  directory d do
    owner 'root'
    group 'root'
    mode '0755'
    recursive true
  end
end
