#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel

queue = channel.queue('hello')

channel.default_exchange.publish('My name is Rodrigo!', routing_key: queue.name)
puts " [x] Sent 'My name is Rodrigo!'"

connection.close