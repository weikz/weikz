set :stage, :production
server '139.162.32.80', user: 'deploy', roles: %w{web app db}
