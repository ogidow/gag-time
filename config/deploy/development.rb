set :stage, :development
#ipaddress = "160.16.80.94"
role :app, %w{root@160.16.80.94}
role :web, %w{root@169.16.80.94}
role :db, %w{root@160.16.80.94}

server '160.16.80.94',
    user: 'root',
    roles: %w{web app db},
    ssh_options: {
    auth_methods: %w(password),
    password: 'iz9QnFAp'
}
