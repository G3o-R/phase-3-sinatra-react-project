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
        position: "Junior Front End Developer",
        job_description: "Create front-end resources using HTML, CSS, and Javascript",
        pay: 27,
        location: "remote",
        company_id: 1
    },
    {
        position: "Senior Engineer",
        job_description: "Utilize C# to maintain and build databases",
        pay: 60,
        location: "Redmond, Washington",
        company_id: 1
    },
    {
        position: "Entry Level Full Stack Developer",
        job_description: "Build really cool stuff for us",
        pay: 100,
        location: "The Moon",
        company_id: 1
    },
    {
        position: 'Proffesional "Stander"',
        job_description: "Just stand there look pretty, enjoy a complementary bagel!",
        pay: 20,
        location: "remote",
        company_id: 1
    },
    {
        position: "Please Help",
        job_description: "I'm stuck inside the computer",
        pay: 505,
        location: "remote",
        company_id: 1
    },
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
