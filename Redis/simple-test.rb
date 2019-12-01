require 'redis'

redis = Redis.new(host: "localhost")

redis.set("a", 1)
redis.set("b", 2)

a = redis.get("a")
b = redis.get("b")

puts "a=#{a} and b=#{b}"