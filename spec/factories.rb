FactoryGirl.define do

  factory(:user) do
    sequence(:email) { |n| "abc#{n}@xyz.com"}
    password { Faker::Internet.password(8) }
  end

  factory(:recipe) do
    name("chicken soup")
    description("yummy")
    preperation { Faker::Lorem.sentence(rand(2..10)).chomp('.') }
    pairings("wine")
  end

  factory(:ingredient) do
    ingredient("broth")
  end

  factory(:note) do
    body { Faker::Lorem.sentence(rand(2..10)).chomp('.') }
  end

end
