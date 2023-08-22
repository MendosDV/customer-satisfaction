job_type :rails_runner, %Q{cd :path && /Users/mickael/.rbenv/shims/bundler exec ./bin/rails runner -e development ':task' :output}
set :output, './log/cron.log'

every 1.minute do
  rails_runner "ClientsController.ask_satisfaction"
end
