class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/applications" do
    application = Application.all
    application.to_json(include: :jobs)
    # { message: "Good luck with your project!" }.to_json
  end
  
  get "/applications/:id" do
    application = Application.find(params[:id])
    application.to_json
  end

end
