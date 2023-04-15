puts "🌱 Seeding spices..."

# Seed your database here
User_Job.create([
    {
        job_id: 1,
        status: "applied"
    },
    {
        job_id: 2,
        status: "applied"
    },
    {
        job_id: 3,
        status: "applied"
    },
    {
        job_id: 4,
        status: "applied"
    }
])

Job.create([
    {
        position: "position data 1",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote"
    },
    {
        position: "position data 2 ",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote"
    },
    {
        position: "position data 3",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote"
    },
    {
        position: "position data 4",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote"
    }
])

puts "✅ Done seeding!"
