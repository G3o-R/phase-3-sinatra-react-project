class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/companies" do
    companies = Company.all
    companies.to_json(include:{ jobs: {include: :applicants}})
  end

end
