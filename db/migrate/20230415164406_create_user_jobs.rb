class CreateUserJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :user_jobs do |t|
      t.integer :job_id
      t.string :status
      t.timestamps
    end
  end
end
