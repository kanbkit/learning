require 'pp'
require_relative 'user'

user = User.new 'khanh1@gmail.com', 'Khanh1'

pp user

user.save
