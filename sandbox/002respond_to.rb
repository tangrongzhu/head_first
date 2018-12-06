#!/usr/bin/env ruby

class Human
  def Walk()
    puts "method 001"
  end 
end

man = Human.new
puts man.respond_to?('Walk')