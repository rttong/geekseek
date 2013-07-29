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
