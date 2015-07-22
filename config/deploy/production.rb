set :rails_env, :production

server 'review.rademade.com', user: 'deploy', roles: %w{web app}