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

project_blue = Organization.create(org_name: "Project Blue", user_id: 1, mission: "The oceans make up 70% of our Earth, providing us with sustenance, beauty and much more.  It our mission at Project Blue to do everything we can to keep it clean for future generations", description: "We partner with schools in beachside communities to lead educational programs for children and adults to teach them about the importance of and methods to keep our oceans clean.", year_founded: 1987, size: 22, url: "https://www.projectblue.com", location: "Ocean City, MD")
1.times do
  project_blue.cause_ids = project_blue.cause_ids.push(3)
end

hunger = Organization.create(org_name: "Stomp Out Hunger", user_id: 2, mission: "No one deserve to go to be hungry.", description: "We teach self reliance through agriculutural education in rural communities.  Through empowering this communities to take control of their food development, we can stomp out hunger for generations to come", year_founded: 1990, size: 100, url: "https://www.stompouthunger.com", location: "Des Moines")

1.times do
  hunger.cause_ids = hunger.cause_ids.push(2)
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
