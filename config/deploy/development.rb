set :stage, :development
role :app, %w{root@${IP_ADDRESS}}
role :web, %w{root@${IP_ADDRESS}}
role :db, %w{root@${IP_ADDRESS}}

server '160.16.80.94',
    user: 'root',
    roles: %w{web app db},
    ssh_options: {
    auth_methods: %w(password),
    password: 'iz9QnFAp'
}
