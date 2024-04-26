
admin1 = Admin.create!(
    email: 'admin1@example.com',
    password: 'password1'
)

admin2 = Admin.create!(
    email: 'admin2@example.com',
    password: 'password2'
)

# Create some gyms linked to admins
gym1 = Gym.create!(
    name: 'Gym A',
    email: 'contact@gyma.com',
    logo: 'gyma_logo.png',
    admin: admin1
)

gym2 = Gym.create!(
    name: 'Gym B',
    email: 'contact@gymb.com',
    logo: 'gymb_logo.png',
    admin: admin2
)

# Create some plans
plan1 = Plan.create!(
    name: 'Basic Plan'
)

plan2 = Plan.create!(
    name: 'Premium Plan'
)

recepcionist1 = Recepcionist.create!(
    email: 'recepcionist1@example.com',
    password: 'password1',
    gym: gym1
)

recepcionist2 = Recepcionist.create!(
    email: 'recepcionist2@example.com',
    password: 'password2',
    gym: gym1
)

  
puts "Database seeded successfully!"
  