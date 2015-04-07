FactoryGirl.define do

  factory(:user) do
    sequence(:email) { |n| "abc#{n}@xyz.com"}
    password { Faker::Internet.password(8) }
  end

  factory(:recipe) do
    name("chicken soup")
    cooktime(20)
    instructions { Faker::Lorem.sentence(rand(2..10)).chomp('.') }
    pairings("wine")
  end

  factory(:ingredient) do
    ingredient("broth")
    pint(true)
  end

  factory(:note) do
    body { Faker::Lorem.sentence(rand(2..10)).chomp('.') }
  end

end
