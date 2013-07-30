# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cause.create([{ cause_type: 'Adult Education' }, { cause_type: 'Children' }, { cause_type: 'Animals' }, { cause_type: 'Special Needs' }, { cause_type: 'Children Education' }, { cause_type: 'Environment' }, { cause_type: 'Health' }, { cause_type: 'Hunger' }, { cause_type: 'Seniors' }, { cause_type: 'Revitilization' }, { cause_type: 'Homeless' }, { cause_type: 'LGBT' }, { cause_type: 'Veterans' }, { cause_type: 'Other' }])

Skill.create([{ skill_type: 'Web Design' }, { skill_type: 'Web Developer' }, { skill_type: 'Technical Training' }, { skill_type: 'Graphic Design' }, { skill_type: 'Marketing' }, { skill_type: 'Other' }])

Category.create([{ category_type: 'Web Design'}, { category_type: 'Web Development'}, { category_type: 'Graphic Design'}])

Project.create(title: "Develop Our New Website", summary: "We rebranded three years ago but haven't had the opportunity to update our really old website.  We've already come up with a general them of how things should look by need help implementing", target_date: "Mon, 29 Jul 2014", organization_id: 1, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on potential donors and clients.", state: "active")

Project.create(title: "Create Our New Logo", summary: "We changed our name and need a new logo to go along with it.  You'll have free range as we're not the most creative bunch.", target_date: "Mon, 29 Jul 2014", organization_id: 2, importance: "We really need to start gaining some brand recognition and this is the first step in doing so.", state: "active")

Project.create(title: "Update our Website", summary: "After going through our whole budget our developer bailed halfway through doing our website redesign.  ", target_date: "Mon, 29 Jul 2014", organization_id: 3, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on ", state: "active")

kittens = Organization.create(org_name: "We Love Kittens", user_id: 1, mission: "We believe every kitten deserves a home.  Our mission is to save all stray kittens.", description: "We are the Bay Area's largest acceptors of stray kittens and cats.  We nurse kittens back to health and find them new homes.", year_founded: 1987, size: 22, url: "https://www.welovekittens.com", location: "San Francisco")
1.times do
  kittens.cause_ids = kittens.cause_ids.push(3)
end

toys = Organization.create(org_name: "Toys for Little Children", user_id: 2, mission: "Every child deserves a gift for the holiday.", description: "We collect toys from local charities and donors and distribute them to the neighborhood children", year_founded: 1952, size: 100, url: "https://www.toys.com", location: "Des Moines")

1.times do
  toys.cause_ids = toys.cause_ids.push(2)
end

zumba_seniors = Organization.create(org_name: "Zumba for Seniors", user_id: 3, mission: "Keeping seniors active, long into their golden years", description: "We offer free zumba classes to seniors.", year_founded: 2010, size: 5, url: "https://www.zumba4srs.com", location: "San Francisco")

1.times do
  zumba_seniors.cause_ids = zumba_seniors.cause_ids.push(9)
end

chantal = Volunteer.create(first_name: "Chantal", last_name: "Emmanuel", job_history: "New York Cares 2009 - 2012", phone: "(123) 456- 7890", availability: "4 hours a week" , location: "San Francisco", portfolio_links: "https://www.chantal.com", user_id: 1, linkedin_url: "http://www.linkedin.com/in/chantalemmanuel")
1.times do
  chantal.skill_ids = chantal.skill_ids.push(1,4)
end

laura = Volunteer.create(first_name: "Laura", last_name: "Montemayor", job_history: "IBM 2009 - 2012", phone: "(123) 456- 7890", availability: "10 hours a week" , location: "San Francisco", portfolio_links: "https://www.laura.com", user_id: 1, linkedin_url: "http://www.linkedin.com/in/lauramontemayor")
1.times do
  laura.skill_ids = laura.skill_ids.push(3,5)
end

ryan = Volunteer.create(first_name: "Ryan", last_name: "Tong", job_history: "Shutterfly 2009 - 2012", phone: "(123) 456- 7890", availability: "10 hours a week" , location: "San Francisco", portfolio_links: "https://www.ryan.com", user_id: 1, linkedin_url: "www.linkedin.com/in/rttong")
1.times do
  ryan.skill_ids = ryan.skill_ids.push(1,2)
end
