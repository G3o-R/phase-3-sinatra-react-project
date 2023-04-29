puts "🌱 Seeding spices..."

# Seed your database here

Company.create([
    {
        company_name: "Microsoft",
        logo_url: "https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RWCZER?ver=1433&q=90&m=6&h=195&w=348&b=%23FFFFFFFF&l=f&o=t&aim=true"
    },
    {
        company_name: "Google",
        logo_url: "https://1000logos.net/wp-content/uploads/2016/11/google-logo.jpg"
    },
    {
        company_name: "Apple",
        logo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7uGeeOYocf0BTe2LDEwQ9Dkfbqo02wCqD-w&usqp=CAU"
    },
])

Company.find_by(company_name: "Microsoft").jobs.create([
    {
                position: "Junior Front End Developer",
                job_description: "Create front-end resources using HTML, CSS, and Javascript",
                pay: 27,
                location: "remote"
            },
            {
                position: "Senior Engineer",
                job_description: "Utilize C# to maintain and build databases",
                pay: 60,
                location: "Redmond, Washington"
            },
            {
                position: "Entry Level Full Stack Developer",
                job_description: "Build really cool stuff for us",
                pay: 100,
                location: "The Moon"
            },
            {
                position: 'Proffesional "Stander"',
                job_description: "Just stand there look pretty, enjoy a complementary bagel!",
                pay: 20,
                location: "remote"
            },
            {
                position: "Please Help",
                job_description: "I'm stuck inside the computer",
                pay: 505,
                location: "remote"
            }
])

Company.find_by(company_name: "Google").jobs.create([
    {
                position: "Senior Engineer",
                job_description: "Utilize GO to provide efficent services for clients",
                pay: 10,
                location: "Mountain View, California"
            },
            {
                position: "IT Support",
                job_description: "Provide excellent service and assistance for clients",
                pay: 33,
                location: "remote"
            },
            {
                position: "Snake Game Operator",
                job_description: "Play the snake game and maintain it's quality",
                pay: 40,
                location: "Also The Moon"
            }
])

Company.find_by(company_name: "Apple").jobs.create([
    {
                position: "Apple Eater",
                job_description: "Eat Apples",
                pay: 67,
                location: "Oak Glen, CA"
            },
            {
                position: "Apple Philosopher",
                job_description: 'Ask questions like "Who is Granny Smith?"',
                pay: 54,
                location: "Yucaipa CA"
            },
            {
                position: "Apple Farmer",
                job_description: "If your name is Johhny you're hired",
                pay: 10000,
                location: "Tehachapi, CA"
            },
            {
                position: "Apple Provider",
                job_description: "Provide apples to teachers",
                pay: 40,
                location: "Anywhere there are are teachers"
            },
            {
                position: "Doctor exterminator",
                job_description: "Fight off doctors using the power of apples",
                pay: 80,
                location: "Remote"
            }    
])

puts "✅ Done seeding!"
