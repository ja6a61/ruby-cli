#!/usr/bin/env ruby
# todo-done.rb

task_number = ARGV.shift.to_i

File.open('todo.txt', 'r') do |file|
  File.open('todo.txt.new', 'w') do |new_file|
    counter = 1
    file.readlines.each do |line|
      name,created,completed = line.chop.split(/,/)
      if task_number == counter
        new_file.puts("#{name},#{created},#{Time.now}")
        puts "Task #{counter} completed"
      else
        new_file.puts("#{name},#{created},#{comleted}")
      end
      counter += 1
    end
  end
end

`mv todo.txt.new todo.txt`
