puts "🌱 Seeding spices..."

# Seed your database here

Company.create([
    {
        company_name: "Microsoft"
    },
    {
        company_name: "Google"
    },
    {
        company_name: "Apple"
    },
])

Job.create([
    {
        position: "position data 1",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 1
    },
    {
        position: "position data 2",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 1
    },
    {
        position: "position data 3",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 1
    },
    {
        position: "position data 4",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 2
    },
    {
        position: "position data 5",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 2
    },
    {
        position: "position data 6",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 2
    },
    {
        position: "position data 7",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 3
    },
    {
        position: "position data 8",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 3
    },
    {
        position: "position data 9",
        job_description: "You'll build stuff",
        pay: 50,
        location: "remote",
        company_id: 3
    }
    ])
    
    Applicant.create([
        {
            applicant_name: "pseudo name 1",
            status: "applied",
            job_id: 1,
        },
        {
            applicant_name: "pseudo name 2",
            status: "applied",
            job_id: 1,
        },
        {
            applicant_name: "pseudo name 3",
            status: "applied",
            job_id: 1,
        },
        {
            applicant_name: "pseudo name 4",
            status: "applied",
            job_id: 1,
        }
    ])


puts "✅ Done seeding!"
