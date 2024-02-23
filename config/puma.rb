# config/puma.rb
bind        "tcp://0.0.0.0:8080"
environment "production"
workers     4
