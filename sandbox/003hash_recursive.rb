#!/usr/bin/env ruby
# https://www.tutorialspoint.com/ruby/ruby_iterators.htm

def hash_recursive_select(hash, key_omit=nil)
    hash.each do |k,v|
      if v.respond_to?(:each)
        hash_recursive_select(v)
      else
        puts k + " " + v.to_s
      end
    end
    puts "done"
end

grades = Hash.new
grades["Bob"] = 82
grades["Jim"] = 94
classes = Hash.new
classes["class1"] = grades
classes["class2"] = "empty"

hash_recursive_select(classes)
