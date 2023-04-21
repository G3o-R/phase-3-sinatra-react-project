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
    {
        position: "Senior Engineer",
        job_description: "Utilize GO to provide efficent services for clients",
        pay: 10,
        location: "Mountain View, California",
        company_id: 2
    },
    {
        position: "IT Support",
        job_description: "Provide excellent service and assistance for clients",
        pay: 33,
        location: "remote",
        company_id: 2
    },
    {
        position: "Snake Game Operator",
        job_description: "Play the snake game and maintain it's quality",
        pay: 40,
        location: "Also The Moon",
        company_id: 2
    },
    {
        position: "Apple Eater",
        job_description: "Eat Apples",
        pay: 67,
        location: "Oak Glen, CA",
        company_id: 3
    },
    {
        position: "Apple Philosopher",
        job_description: 'Ask questions like "Who is Granny Smith?"',
        pay: 54,
        location: "Yucaipa CA",
        company_id: 3
    },
    {
        position: "Apple Farmer",
        job_description: "If your name is Johhny you're hired",
        pay: 10000,
        location: "Tehachapi, CA",
        company_id: 3
    },
    {
        position: "Apple Provider",
        job_description: "Provide apples to teachers",
        pay: 40,
        location: "Anywhere there are are teachers",
        company_id: 3
    },
    {
        position: "Doctor exterminator",
        job_description: "Fight off doctors using the power of apples",
        pay: 80,
        location: "Remote",
        company_id: 3
    }
    ])

    25.times do

        Applicant.create(
            applicant_name: Faker::Name.name,
            status: "applied",
            job_id: rand(0..13)
        )
    
    end


puts "✅ Done seeding!"
