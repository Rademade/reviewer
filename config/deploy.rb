set :application, 'Hound'

set :deploy_to, '/var/www/hound'

set :scm, :git
set :repo_url, 'git@github.com:Rademade/reviewer.git'

# setup rvm.
set :rvm_type,          :system
set :rvm_ruby_version,  '2.2.2@hound'

# how many old releases do we want to keep, not much
set :keep_releases, 3
set :log_level, :info

# files we want symlinking to specific entries in shared
set :linked_files, %w{.env config/database.yml config/secrets.yml config/newrelic.yml}

# dirs we want symlinking to shared
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle}

set(:config_files, %w(database.yml secrets.yml newrelic.yml))

#Resque
role :resque_worker, 'review.rademade.com'
role :resque_scheduler, 'review.rademade.com'

set :resque_environment_task, true

# TODO scualder
set :workers, { '*' => 3 }

namespace :deploy do

  desc 'Restart application'
  after :restart, :restart_passenger do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      within release_path do
        execute :touch, 'tmp/restart.txt'
      end
    end
  end

  after :finishing, 'deploy:restart_passenger'
  after :finishing, 'deploy:cleanup'
  after :restart, 'resque:restart'
end