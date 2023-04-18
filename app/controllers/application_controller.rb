class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "its all working".to_json
  end

  get "/companies" do
    companies = Company.all
    companies.to_json(include:{ jobs: {include: :applicants}})
  end

  post "/company" do
    company = Company.create(
      company_name: params[:company_name],
    )
    Company.to_json
  end

end
