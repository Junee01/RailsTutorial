User.create!(name:  "Junee01",
             email: "sangjunpark0203@gmail.com",
             password:              "sangjun101",
             password_confirmation: "sangjun101",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end