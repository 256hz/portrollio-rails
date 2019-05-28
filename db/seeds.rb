# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
Honor.destroy_all
Skill.destroy_all
Interest.destroy_all
Link.destroy_all
User.destroy_all
Github.destroy_all

# Memory.destroy_all
# Love.destroy_all
# Life.destroy_all

user = User.create!(first_name: 'Hermin', last_name: 'Merble',
    email:"methane@seas.org", phone: '4445556666',
    username:'merby', password:'derk',
    bio:'The bio should be kinda long so we can see how it goes when somebody really rambles on about themselves and talks about like their pets and the time they saw Jeff Bezos once and his aura made them a programming God, an unforgiving Old Testament programming God who often arbitrarily destroys entire settlements with what I think were meteors, and this obviously makes you more employable',
    title:"Full Stack Web Developer",
    intro:'One time I pressed a key and a computer did a thing that I wanted it to do. Only one time, but it was pretty cool.',
    img_url: '/images/abe-avataaars-glasses-circle-transparent.png'
)

job1 = Job.create!(
    company: "Google", title: "CEO",
    summary: "I sold the world into advertising slavery",
    start_month: "Mar", start_year: 2002,
    end_month: "Sept", end_year: 2005,
    responsibilities:["Make shareholders money", "siphon off said money for myself", "destroy other industries"],
    skills_used:["Sociopathy", "Severe undiagnosed trauma", "Acting"],
    img_url: 'https://blog.hubspot.com/hubfs/image8-2.jpg',
    user_id: user.id)
job2 = Job.create(
    company: "Tesla", title: "Janitor",
    summary: "Too much coke, did this in a halfway house",
    start_month: "Oct", start_year: 2007,
    end_month: "Feb", end_year: 2008,
    responsibilities:["Clean Elon Musk's Musk", "Detail Elon's Tesla", "Try to stay sober"],
    skills_used:["Willpower", "Manual labor", "Positive self-outlook"],
    img_url: 'https://i.etsystatic.com/13567406/r/il/22675e/1497993443/il_794xN.1497993443_qs36.jpg',
    user_id: user.id)
# job3 = Job.create(
#     company: "None", title: "None",
#     summary: "Tesla threw me out after an incident",
#     start_month: "Feb", start_year: 2008,
#     responsibilities:["Panhandling", "Busking", "Methadone"],
#     skills_used:["Urgent care", "Bargaining with police", "Neutral self-outlook"],
#     img_url: 'https://i.etsystatic.com/13567406/r/il/22675e/1497993443/il_794xN.1497993443_qs36.jpg',
#     user_id: user.id
# )
job4 = Job.create(
    company: "Halo", title: "Master Chief",
    summary: "Interim professor in Philosophy. Focus on the nature of violence in the history of humanity and its effects on our psyche. My own experiences are the primary source.",
    start_month: "Feb", start_year: 2552,
    responsibilities:["Thinking", "Writing", "Killing (the ego)"],
    skills_used:["Intelligence", "Intimidation", "Fear of Change"],
    img_url: 'https://i.etsystatic.com/6532091/d/il/c7809c/1741012392/il_340x270.1741012392_93d6.jpg?version=1',
    user_id: user.id)

Honor.create!(name: "MVP", 
    summary: "I made like a lot of money",
    month: "Feb", year: "2002",
    user_id: user.id)
Honor.create(name: "MVP2", 
    summary: "I made like a lot of money",
    month: "Dec", year: "2003",
    user_id: user.id)
Honor.create(name: "MVP3", 
    summary: "I made like a lot of money",
    month: "Mar", year: "2004",
    user_id: user.id)

Interest.create!(
    name: "Machiavelli", summary: "This guy really knew how to screw people over",
    user_id: user.id)
Interest.create(
    name: "Acoustic guitar", summary: "I can play Wonderwall",
    user_id: user.id)
Interest.create(
    name: "Reddit", summary: "What a bunch of degenerates",
    user_id: user.id)

link1 = Link.create!(
    title: "Githerb", url: "https://www.github.com",
    summary: "It's a site what u want from me",
    user_id: user.id)
link2 = Link.create(
    title: "The Internet", url: "https://www.google.com",
    summary: "Advertising hell",
    user_id: user.id)
link3 = Link.create(
    title: "Ableton", url: "https://www.ableton.com/en/",
    summary: "A website from a company from a time in a place where the sea never ends into an infinite expanse of merpeople and crystal gazing spheres of liquid thought",
    user_id: user.id)

Skill.create!(name: "React.js", 
    img_url: "https://cdn2.iconfinder.com/data/icons/designer-skills/128/react-512.png", 
    user_id: user.id)
Skill.create(name: "Semantic UI React", 
        img_url: "https://react.semantic-ui.com/logo.png", 
        user_id: user.id)
Skill.create(name: "Rails", 
    img_url: "http://png-2.findicons.com/files/icons/1607/ruby_on_rails/512/ror_logo.png", 
    user_id: user.id)
Skill.create(name: "ES6 Javascript", 
    img_url:"https://www.shareicon.net/data/512x512/2016/07/06/106573_software_512x512.png", 
    user_id: user.id)
Skill.create(name: "Ruby", 
    img_url: "https://image.flaticon.com/icons/png/512/919/919842.png", 
    user_id: user.id)
Skill.create(name: "Python", 
    img_url: "http://icons.iconarchive.com/icons/cornmanthe3rd/plex/512/Other-python-icon.png", 
    user_id: user.id)

github1 = Github.create!(repo_owner: '256hz', repo_name: 'portrollio-react', 
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fadventuresofelguapo.files.wordpress.com%2F2014%2F06%2Ftroll-face.png&f=1',
    summary: 'React frontend of portfolio generator', 
    contribution: 'Semantic integration', 
    user_id: user.id)
github2 = Github.create(repo_owner: '256hz', repo_name: 'portrollio-rails', 
    img_url: 'https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fmedia.salon.com%2F2013%2F07%2Ftroll_doll.jpg&f=1',
    summary: 'Rails backend of portfolio generator', 
    contribution: 'Initial setup of Postgres DB, API, and serializers', 
    user_id: user.id)
github3 = Github.create!(repo_owner: '256hz', repo_name: 'portrollio-react', 
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fthatwasabitmental.files.wordpress.com%2F2014%2F07%2Ftroll-poster.jpg&f=1',
    contribution: 'I forget',
    summary: 'React frontend of portfolio generator', user_id: user.id)
github4 = Github.create(repo_owner: '256hz', repo_name: 'portrollio-rails', 
    img_url: 'https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F7f%2Fb4%2Fc0%2F7fb4c097680e99d87b91a271bfe235f0--troll-dolls-work-outs.jpg&f=1',
    summary: 'Rails backend of portfolio generator', 
    contribution: 'Initial setup of Postgres DB, API, and serializers', 
    user_id: user.id)
github5 = Github.create!(repo_owner: 'ifmeorg', repo_name: 'ifme', 
    img_url: 'https://avatars1.githubusercontent.com/u/23299450?s=200&v=4',
    contribution: 'Styled a tooltip element',
    summary: 'React frontend of portfolio generator', user_id: user.id)