require 'pry'

require 'active_record'
require_relative 'db/connection'
require_relative 'models/pokemon'

binding.pry

puts "this line fixes binding.pry bug"
