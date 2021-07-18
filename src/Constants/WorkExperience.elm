module Constants.WorkExperience exposing (..)

import Types exposing (WorkExperience)


azure : WorkExperience
azure =
    { org = "Microsoft Azure AI (via AmplifyCP)"
    , feature = True
    , role = "Lead UX/UI Software Engineer"
    , date = "May 2021 - July 2021"
    , description = "Leading developers, designers and data engineers in Europe, India, South America, NZ, and US across several projects to showcase demos of Microsoft Azure AI technology to solve real-world problems for different sects of industry."
    , accomplishments =
        [ "Refactored five React apps into a single TOML configurable app"
        , "Wrote automated scripts to speed up development pain-points"
        , "Performance optimized Azure Media and Power BI embeds"
        , "Removed redundant or broken code with reusable abstractions"
        , "Managed deployment and production environments"
        , "Set scope and priorities for multiple international teams"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "Redux", "TOML", "TypeScript" ]
    }


emma : WorkExperience
emma =
    { org = "AmplifyCP"
    , feature = True
    , role = "Lead Full-stack Software Engineer"
    , date = "March 2021 - Present"
    , description = "An internal project at AmplifyCP, Emma is a web application and mobile app that helps parents that have children with congenital CMV monitor, track, and make recommendations based on medical and behavioral interventions."
    , accomplishments =
        [ "Designed and implemented full-stack architecture"
        , "Created Collaboration Documents for PMs, Designers, and Engineers through Miro"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "Express.js", "MongoDB", "Mongoose", "React", "Redux", "TypeScript" ]
    }


pot : WorkExperience
pot =
    { org = "Port of Tacoma (via AmplifyCP)"
    , feature = True
    , role = "Lead Full-stack Software Engineer"
    , date = "March 2021 - Present"
    , description = "Overhauling and updating various services for the Port of Tacoma, including new solutions that integrate with legacy APIs."
    , accomplishments =
        [ "Building and maintaining Express servers to replace outdated legacy services in their data pipeline"
        , "Designed Socket.io architecture for real-time data requirements"
        , "Created performance dashboards for new APIs with React"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "JavaScript", "Socket.io", "SQL Server" ]
    }


playboy : WorkExperience
playboy =
    { org = "Playboy Group, Inc. (via AmplifyCP)"
    , feature = False
    , role = "Software Engineer"
    , date = "May 2021 - May 2021"
    , description = "Worked for Playboy company acquisition, TLA, to create automated scripts to handle data migration needs."
    , accomplishments =
        [ "Created Python scripts to run nightly data migrations from an on-premise server into Snowflake to enable data viz"
        , "Collaborated with Data Viz specialists to solve roadblocks"
        ]
    , tech = [ "Python", "Pandas", "Snowflake", "SQL Server" ]
    }


colorado : WorkExperience
colorado =
    { org = "Colorado Community College System (via AmplifyCP)"
    , feature = True
    , role = "Full-stack Software Engineer"
    , date = "August 2019 - Present"
    , description = "Ongoing project that replaced five 15+ year-old web applications with a single, cloud-based, solution."
    , accomplishments =
        [ "Built reusable React components in Typescript"
        , "Built tests with React Testing-Library and Enzyme"
        , "Developed standards for React, Redux and SASS architecture"
        , "Built controllers and endpoints with C# and ASP.net Core"
        , "Wrote SQL Queries for reporting and data collection features"
        , "Created open-source solutions for technical requirements"
        , "Provided ongoing support and feature work"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "TypeScript", "Redux", "SASS", "C#", "SQL Server", "ASP.Net Core", "Entity Framework" ]
    }


graphAPI : WorkExperience
graphAPI =
    { org = "Microsoft Graph Security API (via AmplifyCP)"
    , feature = False
    , role = "Technical Program Manager"
    , date = "August 2019 - August 2019"
    , description = "Creating and updating example solutions and documentation for Microsoft Graph API integrations with various security related systems."
    , accomplishments =
        [ "Wrote implementations in C#, Python, and JavaScript"
        , "Liaison between customers and community and dev team"
        , "Maintained public-facing documentation on GitHub"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "TypeScript", "Redux", "SASS", "C#", "SQL Server", "ASP.Net Core", "Entity Framework" ]
    }


codingDojo : WorkExperience
codingDojo =
    { org = "Coding Dojo"
    , feature = False
    , role = "Curriculum Lead / Instructor"
    , date = "October 2018 - August 2019"
    , description = "Coding Dojo is an international in-person and online coding boot camp that specializes in teaching a full-stack curriculum."
    , accomplishments =
        [ "Performed group and one-on-one instruction in Python, C#, and JavaScript full-stack development"
        , "Curriculum lead for C# and JavaScript stacks designing learning modules for students company-wide"
        , "Lead morning algorithm instruction on data structures, sorting algorithms, and algorithm design"
        ]
    , tech =
        [ "Angular.io"
        , "ASP.Net Core"
        , "C#"
        , "CSS"
        , "Django"
        , "Entity Framework"
        , "Express.js"
        , "Flask"
        , "JavaScript"
        , "MongoDB"
        , "Mongoose.js"
        , "MySQL"
        , "Node.js"
        , "Python"
        , "Socket.io"
        , "TypeScript"
        ]
    }


self : WorkExperience
self =
    { org = "Self"
    , feature = False
    , role = "Software Engineer"
    , date = "March 2017 - October 2018"
    , description = "Created full-stack websites and web applications for clients in various stacks while devoting a significant energy toward formalizing my software experience to date."
    , accomplishments =
        [ "Created all technical assets, including: Front End UX/UI Design Back End API Design, and Database Design"
        , "Gathered requirements from clients to negotiate and set timelines and goals"
        , "Maintained numerous production websites"
        ]
    , tech =
        [ "Drupal"
        , "WordPress"
        , "JavaScript"
        , "MySQL"
        , "Python"
        ]
    }


roles : List WorkExperience
roles =
    [ azure
    , playboy
    , emma
    , pot
    , colorado
    , graphAPI
    , codingDojo
    , self
    ]


highlights : List WorkExperience
highlights =
    List.filter (\w -> w.feature) roles



-- Non Technical WorkExperience


asu : WorkExperience
asu =
    { org = "Arizona State University"
    , feature = True
    , role = "Graduate Research Assistant"
    , date = "2013 - 2016"
    , description = "Conducted research on memory in pet dogs as part of a combination program to earn multiple degrees simultaneously in a cross-department collaboration at ASU, ending in a PhD, however I withdrew from the program after 3 years. Conducted research on memory in pet dogs."
    , accomplishments =
        [ "Maintained lab's Drupal website"
        , "Wrote in R and Python for testing statistics and models"
        , "Mentored and managed a large team of undergraduate research assistants"
        , "Teaching Assistant for biology and psychology departments"
        , "Published as lead author in Reviews in Neurosciences"
        ]
    , tech =
        [ "Drupal"
        , "R"
        , "Python"
        ]
    }


sparcs : WorkExperience
sparcs =
    { org = "SPARCS"
    , feature = True
    , role = "Executive Director"
    , date = "2013 - 2017"
    , description = "Founder of the Society for the Promotion of Applied Research in Canine Science (SPARCS), an international non-profit that revolutionized continuing education for animal welfare professionals by closing the gap between scientists and practitioners via online broadcasted TED-talk-like conferences to more than 130 countries. Sold company in 2017."
    , accomplishments =
        [ "Organized and managed hundreds of contractors and volunteers"
        , "Coordinated globally with key partners"
        , "Created global marketing campaigns"
        , "Created and maintained organization website"
        ]
    , tech = [ "Umbraco" ]
    }


pawsitivePackleader : WorkExperience
pawsitivePackleader =
    { org = "Pawsitive Packleader, Inc."
    , feature = True
    , role = "CEO"
    , date = "2010 - 2014"
    , description = "Created a small startup in the aftermath of the 2008 economic crash that specialized in in-home dog training. Sold the company in 2014."
    , accomplishments =
        [ "Managed and mentored four employees"
        , "Maintained > 80% 5-star client satisfaction"
        , "Created and maintained company website"
        , "Created SEO that moved company to first result in organic search for Seattle Dog Training"
        ]
    , tech = [ "Drupal, WordPress" ]
    }


operaman : WorkExperience
operaman =
    { org = "Self (US & Europe)"
    , feature = True
    , role = "Opera Singer"
    , date = "2002 - 2010"
    , description = "Tra la la! Buy me a beer and we can talk about the early days. 😀"
    , accomplishments = []
    , tech = []
    }


nonTechRoles : List WorkExperience
nonTechRoles =
    [ sparcs
    , asu
    , pawsitivePackleader
    , operaman
    ]
