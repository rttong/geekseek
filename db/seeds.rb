# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cause.create([{ cause_type: 'Adult Education' }, { cause_type: 'Children' }, { cause_type: 'Animals' }, { cause_type: 'Special Needs' }, { cause_type: 'Children Education' }, { cause_type: 'Environment' }, { cause_type: 'Health' }, { cause_type: 'Hunger' }, { cause_type: 'Seniors' }, { cause_type: 'Revitilization' }, { cause_type: 'Homeless' }, { cause_type: 'LGBT' }, { cause_type: 'Veterans' }, { cause_type: 'Other' }])

Skill.create([{ skill_type: 'Web Design' }, { skill_type: 'Web Developer' }, { skill_type: 'Technical Training' }, { skill_type: 'Graphic Design' }, { skill_type: 'Marketing' }, { skill_type: 'Other' }])

Category.create([{ category_type: 'Web Design'}, { category_type: 'Web Development'}, { category_type: 'Graphic Design'}, { category_type: 'Marketing'}])



# ###User 1, Org 1, Project1####
# User.create(email: "projectblue@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# project_blue = Organization.create(org_name: "Project Blue", user_id: 1, mission: "The oceans make up 70% of our Earth, providing us with sustenance, beauty and much more.  It our mission at Project Blue to do everything we can to keep it clean for future generations", description: "We partner with schools in beachside communities to lead educational programs for children and adults to teach them about the importance of and methods to keep our oceans clean.", year_founded: 1987, size: 22, url: "https://www.projectblue.com", location: "Ocean City, MD")
# 1.times do
#   project_blue.cause_ids = project_blue.cause_ids.push(6)
# end
# Project.create(title: "Develop Our New Website", summary: "We rebranded three years ago but haven't had the opportunity to update our really old website.  We've already come up with a general them of how things should look by need help implementing", target_date: "Mon, 22 Jul 2014", organization_id: 1, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on potential donors and clients.", state: "active")


# ###User 2, Org 2, Project2####
# User.create(email: "stompouthunger@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# hunger = Organization.create(org_name: "Stomp Out Hunger", user_id: 2, mission: "No one deserve to go to be hungry.", description: "We teach self reliance through agriculutural education in rural communities.  Through empowering this communities to take control of their food development, we can stomp out hunger for generations to come", year_founded: 1990, size: 100, url: "https://www.stompouthunger.com", location: "Des Moines")
# 1.times do
#   hunger.cause_ids = hunger.cause_ids.push(8)
# end
# Project.create(title: "Create Our New Logo", summary: "We changed our name and need a new logo to go along with it.  You'll have free range as we're not the most creative bunch.", target_date: "Mon, 15 May 2014", organization_id: 2, importance: "We really need to start gaining some brand recognition and this is the first step in doing so.", state: "active")



# ###User 3, Org 3, Project3####
# User.create(email: "cleanair@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# clean_air= Organization.create(org_name: "Clean Air", user_id: 3, mission: "Lobbying for clean air legislature.", description: "We work to promote clean air initiatives by lobbying against large pollution companies and raising funds for programs that further our cause.", year_founded: 2010, size: 5, url: "https://www.cleanair.com", location: "Washington D.C.")
# 1.times do
#   clean_air.cause_ids = clean_air.cause_ids.push(6)
# end
# Project.create(title: "Update our Website", summary: "After going through our whole budget our developer bailed halfway through doing our website redesign.  ", target_date: "Mon, 11 Dec 2014", organization_id: 3, importance: "Our website doesn't reflect who we are as an organization and I feel like we're missing out on ", state: "active")

# ###User 4, Org 4, Project 4####
# User.create(email: "savedogs@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# dogs= Organization.create(org_name: "Save the Dogs", user_id: 4, mission: "Finding every dog a home.", description: "We match stray dogs with loving pet owners in the tri-state area", year_founded: 2010, size: 15, url: "https://www.savedogs.com", location: "New York, NY")
# 1.times do
#     dogs.cause_ids = dogs.cause_ids.push(3)
# end
# Project.create(title: "Create a New Database", summary: "We need help creating an digital database.  ", target_date: "Mon, 29 Jul 2014", organization_id: 4, importance: "We are currently tracking all adoptions on paper and would like like to swtich to a digital system that will make it easier to store and share information", state: "active")

# ###User 5, Org 5, Project5####
# User.create(email: "greenliving@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# green= Organization.create(org_name: "Green Living", user_id: 5, mission: "Fighting everyday for a greener earth.", description: "We conduct park cleanups and education programs to serve as ambassadors for mother nature.", year_founded: 1998, size: 15, url: "https://www.greenliving.com", location: "Palo Alto, CA")
# 1.times do
#     green.cause_ids = green.cause_ids.push(6)
# end
# Project.create(title: "Lead us in a Technology Workshop", summary: "We received a generous donation of new computers, scanners, and fax machines and need help setting them up and learning how to use them.  ", target_date: "Mon, 29 May 2014", organization_id: 5, importance: "Onboarding this new technology quickly means we can get back to serving the community faster.", state: "active")

# ###User 6, Org 6, Project6####
# User.create(email: "teachyouth@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "organization")
# teach= Organization.create(org_name: "Teach YOUth", user_id: 5, mission: "Making sure every child has an opportunity to learn", description: "We run an afterschool program for Renos most vulnerable school districts.", year_founded: 2008, size: 15, url: "https://www.teachYOUth.com", location: "Reno, Nevada")
# 1.times do
#     teach.cause_ids = teach.cause_ids.push(2)
# end
# Project.create(title: "Create an Online Flashcard Game", summary: "We would like our various paper flashcards to be converted to a fun and interactive online game our students can play and lear from.  ", target_date: "Mon, 10 Nov 2013", organization_id: 6, importance: "Living in such a digitized world it's difficult for us to keep the children's attentions for any amount of time.  Finding new and creative ways to keep them engaged is crucial in promoting learning.", state: "active")

# ### User 7, Vol 1 ###
# User.create(email: "cemmanuel1@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "volunteer")
# chantal = Volunteer.create(first_name: "Chantal", last_name: "Emmanuel", job_history: "New York Cares 2009 - 2012", phone: "(123) 456- 7890", availability: "4 hours a week" , location: "San Francisco", portfolio_links: "https://www.chantal.com", user_id: 4, linkedin_url: "http://www.linkedin.com/in/chantalemmanuel")
# 1.times do
#   chantal.skill_ids = chantal.skill_ids.push(1,4)
# end


# ### User 8, Vol 2 ###
# User.create(email: "laura@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "volunteer")
# laura = Volunteer.create(first_name: "Laura", last_name: "Montemayor", job_history: "IBM 2009 - 2012", phone: "(123) 456- 7890", availability: "10 hours a week" , location: "San Francisco", portfolio_links: "https://www.laura.com", user_id: 5, linkedin_url: "http://www.linkedin.com/in/lauramontemayor")
# 1.times do
#   laura.skill_ids = laura.skill_ids.push(3,5)
# end



# ### User 9, Vol 3 ###
# User.create(email: "ryan@gmail.com", password: "12345678", password_confirmation: "12345678", profile_type: "volunteer")
# ryan = Volunteer.create(first_name: "Ryan", last_name: "Tong", job_history: "Shutterfly 2009 - 2012", phone: "(123) 456- 7890", availability: "10 hours a week" , location: "San Francisco", portfolio_links: "https://www.ryan.com", user_id: 6, linkedin_url: "www.linkedin.com/in/rttong")
# 1.times do
#   ryan.skill_ids = ryan.skill_ids.push(1,2)
# end
