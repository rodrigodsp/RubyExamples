require 'bunny'

connection = Bunny.new
connection.start

channel = connection.create_channel

queue = channel.queue('work_queues')

message = ARGV.empty? ? 'Hello World' : ARGV.join(' ')

queue.publish(message, persistent: true)
puts " [x] Sent #{message}"