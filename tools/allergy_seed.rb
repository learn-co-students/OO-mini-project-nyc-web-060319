require_relative '../config/environment.rb'


users = []
10.times do
    user = User.new()
    user.declare_allergy("peanuts")
    users << user
end

user = User.new()
user.declare_allergy("banana")


binding.pry


