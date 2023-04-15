puts "🌱 Seeding spices..."

# Seed your database here
Application.create([
    {
        status: "applied"
    },
    {
        status: "applied"
    },
    {
        status: "applied"
    },
    {
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
        location: "remote",
        application_id: 1
    },
    {
        position: "position data 2 ",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        application_id: 2
    },
    {
        position: "position data 3",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        application_id: 3
    },
    {
        position: "position data 4",
        company_name: "pseudo company name",
        job_type: "React Developer",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        application_id: 4
    }
])

puts "✅ Done seeding!"
