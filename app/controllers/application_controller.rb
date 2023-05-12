class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "its all working".to_json
  end

  get "/companies" do
    companies = Company.all.order('company_name')
    companies.to_json(include: :jobs)
  end

#  post route for companies only meant to meet requirements
  post "/companies" do
    company = Company.create(
      company_name: params[:company_name],
      logo_url: params[:logo_url]
    )
    company.to_json
  end
  delete "/companies/:id" do
    company = Company.find(params[:id])
    company.destroy
  end

  # read route only meant to meet requirements
  get "/jobs" do
    jobs = Job.all
    jobs.to_json
  end

  get "/jobs/:id" do
    jobs = Job.find(params[:id])
    jobs.to_json
  end

  post "/jobs" do 
    jobs = Job.create(
      position: params[:position],
      job_description: params[:job_description],
      pay: params[:pay],
      location: params[:location],
      company_id: params[:company_id]
    )
    jobs.to_json
  end

  delete "/jobs/:id" do 
    jobs = Job.find(params[:id])
    jobs.destroy
  end
end

