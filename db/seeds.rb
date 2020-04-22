# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '☠️ Destroying everything!'
MeetingTrainee.destroy_all
Trainee.destroy_all
Meeting.destroy_all
User.destroy_all
puts 'All clear! ✅'


puts '👱‍♂️👩 Creating Users'
users = User.create([
  { name: 'Rui', email: 'rui@b-sessions.test', password: '111111', password_confirmation: '111111' },
  { name: 'Leandro', email: 'leandro@b-sessions.test', password: '111111', password_confirmation: '111111' },
  { name: 'Carina', email: 'carina@b-sessions.test', password: '111111', password_confirmation: '111111' }
])
puts 'Users successfully created! ✅'


puts '📚 Creating Sessions'
meetings = Meeting.create([
  { name: 'Initial Briefing', start_date: Date.new(2020, 4, 25), end_date: Date.new(2020, 4, 26), user: users[0] },
  { name: 'Learning the Basics', start_date: Date.new(2020, 4, 30), end_date: Date.new(2020, 5, 2), user: users[1] },
  { name: 'Management 101', start_date: Date.new(2020, 5, 4), end_date: Date.new(2020, 5, 5), user: users[1] },
  { name: 'Going deeper in Tech', start_date: Date.new(2020, 5, 12), end_date: Date.new(2020, 5, 13), user: users[2] },
  { name: 'Bridging the Gap', start_date: Date.new(2020, 5, 14), end_date: Date.new(2020, 5, 15), user: users[0] }
])
puts 'Sessions successfully created! ✅'


puts '👤 Creating Trainees'
trainees = Trainee.create([
  { name: 'Rui', email: 'rui@b-sessions.test' },
  { name: 'Leandro', email: 'leandro@b-sessions.test' },
  { name: 'Carina', email: 'carina@b-sessions.test' },
  { name: 'Ana', email: 'ana@b-sessions.test' },
  { name: 'João', email: 'joao@b-sessions.test' },
  { name: 'Carla', email: 'carla@b-sessions.test' },
  { name: 'Ivo', email: 'ivo@b-sessions.test' },
  { name: 'Marta', email: 'marta@b-sessions.test' },
  { name: 'José', email: 'jose@b-sessions.test' },
  { name: 'Maria', email: 'maria@b-sessions.test' }
])
puts 'Trainees successfully created! ✅'


puts '👨‍💻👩‍💻 Creating Session Trainees'
meetings[0].trainees << [ trainees[0], trainees[1], trainees[2] ]
meetings[1].trainees << [ trainees[1], trainees[2], trainees[4], trainees[5], trainees[6] ]
meetings[2].trainees << [ trainees[1], trainees[4], trainees[3] ]
meetings[3].trainees << [ trainees[2], trainees[1], trainees[5], trainees[9] ]
meetings[4].trainees << [ trainees[0], trainees[1], trainees[7], trainees[8] ]
puts 'Session Trainees successfully created! ✅'

puts 'All seeds ready! 🚀'
