#!/usr/bin/env ruby
# todo-new.rb

new_task = ARGV.shift

File.open('todo.txt', 'a') do |file|
  file.puts "#{new_task},#{Time.now}"
  puts "Task aded."
end

