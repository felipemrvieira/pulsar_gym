require 'ffaker'

muscle_exercises = [
    "Supino Reto",
    "Agachamento",
    "Levantamento Terra",
    "Desenvolvimento de Ombros",
    "Rosca Direta",
    "Tríceps no Banco",
    "Puxada no Pulley",
    "Leg Press",
    "Extensão de Pernas",
    "Flexão de Pernas",
    "Elevação Lateral",
    "Rosca Scott",
    "Abdominal Crunch",
    "Panturrilha em Pé",
    "Pullover"
]

# Criando países, estados e cidades
5.times do
  country = Country.create(name: FFaker::Address.country)
  state = State.create(name: FFaker::AddressUS.state, country: country)
  city = City.create(name: FFaker::Address.city, state: state)
  5.times do
    Neighbor.create(name: FFaker::Address.neighborhood, city: city)
  end
end

# Criando super admins
SuperAdmin.create(email: "felipemrvieira@gmail.com", password: 'password')
5.times do
  SuperAdmin.create(email: FFaker::Internet.email, password: 'password')
end

# Criando admins, gyms e recepcionists
5.times do
  admin = Admin.create(email: FFaker::Internet.email, password: 'password')
  gym = Gym.create(name: FFaker::Company.name, email: FFaker::Internet.email, logo: FFaker::Avatar.image, admin: admin)
  5.times do
    Recepcionist.create(email: FFaker::Internet.email, password: 'password', gym: gym)
  end
end

# Criando customers e addresses
5.times do
  customer = Customer.create(email: FFaker::Internet.email, password: 'password', birthdate: FFaker::Time.date)
  Address.create(street_name: FFaker::Address.street_name, building_number: FFaker::Address.building_number, complement: FFaker::Address.secondary_address, neighbor: Neighbor.first, addressable: customer)
end

# Criando planos e inscrições
5.times do
  plan = Plan.create(name: FFaker::Product.product_name)
  5.times do
    customer = Customer.all.sample
    Enrollment.create(obs: FFaker::Lorem.sentence, price_cents: rand(10000..50000), expiration: Date.today + 1.year, is_active: [true, false].sample, plan: plan, customer: customer)
  end
end

# Criando instrutores e exames
5.times do
  instructor = Instructor.create(email: FFaker::Internet.email, password: 'password', gym: Gym.all.sample)
  5.times do
    customer = Customer.all.sample
    examination = Examination.create(expiration: Date.today + 1.year, instructor: instructor, customer: customer)
    workout = Workout.create(name: FFaker::Sport.name, examination: examination)
    5.times do
        exercise_name = muscle_exercises.sample
        Exercise.create(name: exercise_name, description: FFaker::Lorem.paragraph, workout: workout)
    end
  end
end

# Criando gym plans e subscriptions
5.times do
  gym = Gym.all.sample
  gym_plan = GymPlan.create(name: FFaker::Product.product_name, price_cents: rand(1000..10000), is_active: [true, false].sample, gym: gym)
  subscription_plan = SubscriptionPlan.create(name: FFaker::Product.product_name, price_cents: rand(1000..5000), super_admin: SuperAdmin.all.sample)
  Subscription.create(price_cents: rand(500..1500), gym: gym, subscription_plan: subscription_plan, is_active: [true, false].sample)
end

puts "Seed data created successfully!"
