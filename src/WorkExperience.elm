module WorkExperience exposing (..)


type alias WorkExperience =
    { accomplishments : List String
    , date : String
    , description : String
    , feature : Bool
    , org : String
    , role : String
    , tech : List String
    }


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
        , "Liason between customers and community and dev team"
        , "Maintained public-facing documentation on GitHub"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "TypeScript", "Redux", "SASS", "C#", "SQL Server", "ASP.Net Core", "Entity Framework" ]
    }


roles : List WorkExperience
roles =
    [ azure
    , playboy
    , emma
    , pot
    , colorado
    , graphAPI
    ]
