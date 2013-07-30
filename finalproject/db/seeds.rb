# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cause.create([{ cause_type: 'Adult Education' }, { cause_type: 'Children Education' }, { cause_type: 'Animals' }, { cause_type: 'Special Needs' }, { cause_type: 'Children Education' }, { cause_type: 'Environment' }, { cause_type: 'Health' }, { cause_type: 'Hunger' }, { cause_type: 'Seniors' }, { cause_type: 'Revitilization' }, { cause_type: 'Homeless' }, { cause_type: 'LGBT' }, { cause_type: 'Veterans' }, { cause_type: 'Other' }])

Skill.create([{ skill_type: 'Web Design' }, { skill_type: 'Web Developer' }, { skill_type: 'Technical Training' }, { skill_type: 'Graphic Design' }, { skill_type: 'Marketing' }, { skill_type: 'Other' }])

Category.create([{ category_type: 'Web Design'}, { category_type: 'Web Development'}, { category_type: 'Graphic Design'}])

Project.create(title: "Develop Our New Website", summary: "We rebranded three years ago but haven't had the opportunity to update our really old website.  We've already come up with a general them of how things should look by need help implementing", target_date: "Mon, 29 Jul 2014", organization_id: 1, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on potential donors and clients.", state: "active")

Project.create(title: "Create Our New Logo", summary: "We changed our name and need a new logo to go along with it.  You'll have free range as we're not the most creative bunch.", target_date: "Mon, 29 Jul 2014", organization_id: 2, importance: "We really need to start gaining some brand recognition and this is the first step in doing so.", state: "active")

Project.create(title: "Update our Website", summary: "After going through our whole budget our developer bailed halfway through doing our website redesign.  ", target_date: "Mon, 29 Jul 2014", organization_id: 3, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on ", state: "active")

Organization.create(org_name: "We Love Kittens", user_id: 1, cause: "Animals", mission: "We believe every kitten deserves a home.  Our mission is to save all stray kittens.  ", description: "We are the Bay Area's largest acceptors of stray kittens and cats.  We nurse kittens back to health and find them new homes.", year_founded: 1987, size: 22, url: "https://www.welovekittens.com", location: "San Francisco")

Organization.create(org_name: "Toys for Little Children", user_id: 1, cause: "Children Education", mission: "We believe every kitten deserves a home.  Our mission is to save all stray kittens.  ", description: "We are the Bay Area's largest acceptors of stray kittens and cats.  We nurse kittens back to health and find them new homes.", year_founded: 1987, size: 22, url: "https://www.welovekittens.com", location: "San Francisco")

Organization.create(org_name: "We Love Kittens", user_id: 1, mission: "We believe every kitten deserves a home.  Our mission is to save all stray kittens.  ", description: "We are the Bay Area's largest acceptors of stray kittens and cats.  We nurse kittens back to health and find them new homes.", year_founded: 1987, size: 22, url: "https://www.welovekittens.com", location: "San Francisco")

