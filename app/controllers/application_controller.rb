class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "its all working".to_json
  end

  get "/companies" do
    companies = Company.all.order('company_name')
    companies.to_json(include: :jobs)
  end

  post "/companies" do
    company = Company.create(
      company_name: params[:company_name],
      logo_url: params[:logo_url]
    )
    company.to_json(include: :jobs)
  end

  delete "/companies/:id" do
    company = Company.find(params[:id])
    company.destroy
  end

  post "/jobs" do 
    company = Company.find(params[:company_id])
    jobs = company.jobs.create(
      position: params[:position],
      job_description: params[:job_description],
      pay: params[:pay],
      location: params[:location]
    )
    jobs.to_json
  end

  patch 'jobs/:id' do
    job = Job.find(params[:id])
    job.update(
      position: params[:position],
      job_description: params[:job_description],
      pay: params[:pay],
      location: params[:location],
      company_id: params[:company_id]
    )
    job.to_json
  end

  delete "/jobs/:id" do 
    jobs = Job.find(params[:id])
    jobs.destroy
  end
end

