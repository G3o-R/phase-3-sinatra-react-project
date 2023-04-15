class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    # { message: "Good luck with your project!" }.to_json
    user_job = User_Job.all
    user_job.to_json
  end

end
