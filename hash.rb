# def hash_recursive_select(hash, key_omit=nil)
#   _output = []
#   hash.each do |k,v|
#     if v.respond_to?(:each)
#       hash_recursive_select(v)
#     else
#       _output << v unless k == key_omit
#     end
#   end
#   print _output
#   _output
# end
#
res = {
    "mojo_health": "OK",
    "version": nil,
    "namu_health": "OK",
    "pelican_health": "OK",
    "oxygen_health": "Read timed out",
    "heroku_health": "OK",
    "keiko_health": "OK",
    "lem_redis_health": {
        "read": "OK1",
        "write": "OK2"
    },
    "metering_health": "OK",
    "mailbroker_health": "OK"
}

array = [1,2,3]
array.each {|i| puts i}

hash = {"H" => "Hydrogen", "Li" => "lithium","Keiko" => {"read":"OK1", "write":"OK2"}}

def ihash(h)
  h.each do |k,v|
    if v.is_a?(Hash)
      puts "Key: #{k} recursing... in ihash"
      ihash(v)
    else
      # Modify here! Look for what you want to find in the hash here
      puts "key: #{k} value: #{v}"
    end

  end
end

#ihash(hash)

@output = []

def rhash(hash, key_omit = nil)
  hash.each do |k,v|
    if v.respond_to?(:each)
      puts "Key: #{k} recursing...in rhash"
      rhash(v)
    else
      puts "key: #{k} value: #{v}"
      @output << v unless k == key_omit
      # puts output
    end
  end
  # print "this is output: #{output}"
  return @output
end

out = rhash(res, :version)

print out.uniq