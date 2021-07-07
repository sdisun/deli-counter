# Write your code here.

katz_deli = []

def take_a_number(katz_deli, client_name)
    katz_deli << client_name
    line_num = katz_deli.size
    puts "Welcome, #{client_name}. You are number #{line_num} in line."
end

def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        line_status = "The line is currently:"
        katz_deli.each_with_index do |client, index|
            line_status += " #{index + 1}. #{client}"
        end
        puts line_status
    end
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.shift}."
    end
end