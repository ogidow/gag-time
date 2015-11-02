lock '3.4.0'
APP_NAME = "gagtime"
GIT_URL = "https://github.com/ogidow/gag-time"

set :application, '${APP_NAME}'
set :repo_url, '${GIT_URL}'

set :branch, 'master'
set :deploy_to, '/var/www/app/${APP_NAME}'
set :scm, :git
set :log_level, :debug
set :pty, true

set :bundle_binstubs, nil
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets bundle public/system public/assets}
set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do
  after :finishing, 'deploy:cleanup'
end
