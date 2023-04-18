class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "its all working".to_json
  end
# companies
  get "/companies" do
    companies = Company.all
    companies.to_json(include:{ jobs: {include: :applicants}})
  end

  post "/companies" do
    company = Company.create(
      company_name: params[:company_name],
    )
    Company.to_json
  end
# ---------------------------------------------------------------------
#applicants

  get "/applicants" do
    applicants = Applicant.all
    applicants.to_json
  end

  get "/applicants/:id" do
    applicants = Applicant.find(params[:id])
    applicants.to_json
  end

  post "/applicants" do 
    applicants = Applicant.create(
      applicant_name: params[:applicant_name],
      status: params[:status],
      job_id: params[:job_id]
    )
    applicants.to_json
  end

  patch "/applicants/:id" do
    applicant = Applicant.find(params[:id])
    applicant.update(
      status: params[:status]
    )
    applicant.to_json
  end

  delete "/applicants/:id" do
    applicant = Applicant.find(params[:id])
    applicant.destroy
  end
#-----------------------------------------------------------------------------
end

