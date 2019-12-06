require 'redis'

redis = Redis.new(host: "localhost")

redis.set("a", 1)
redis.set("b", 2)
redis.set("c", nil)

a = redis.get("a")
b = redis.get("b")
c = redis.get("c")
d = redis.get("d")

puts "a=#{a} and b=#{b} and c=#{c} and d=#{d}"

puts "c exists" if redis.exists("c")
puts "d exists" if redis.exists("d")

puts "c is null" if redis.get("c").nil?
puts "d is null" if redis.get("d").nil?