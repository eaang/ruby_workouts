# WARMUP 🏃 - No need for tests, play with the methods on irb
require_relative 'data'

def total_number(people_list)
  # get the total number of people
  people_list.count
end

def swap_first_and_last(people_list)
  # the first person should be the first,
  # and the last should be the first
  people_list[0], people_list[-1] = people_list[-1], people_list[0]
  people_list
end

def all_uppercase(people_list)
  # return the same array, but uppercase all names
  people_list.map(&:upcase)
end

def all_wo_a(people_list)
  # filter out all members of the list that have an "a" on their names
  people_list.filter { |name| name.include?('a') }
end

def all_even_surnames(people_list)
  # filter by people whose surname length is even
  # "Jimenez, Miguel" => false, jimenez has 7 characters
  # "Aulia, Prima" => false, aulia has 5 characters
  # "Tang, Rachel" => true, tang has 4 characters
  people_list.select { |person| person.slice(/\w*(?=,)/).length.even? }
end

def only_first_names(people_list)
  # Filter the people on the list with only one name
  # "Tolkien, J.R.R." => false
  # "Jay-Z" => true
  # "Prince" => true
  people_list.reject { |name| name.include?(',') }
end

def first_and_last(people_list)
  # transform the list format from
  # ["last_name, first_name"]
  # ["first_name, last_name"]
  people_list.map do |name|
    name.split(', ').reverse.join(', ')
  end
end

# WORKOUT 🏋 - run rspec in your terminal to check your results

def longest_quote(quote_list)
  # Get the longest quote on the list!
  quote_list.max_by { |quote| quote[:text].length }
end

def count_fail_quotes(quote_list)
  # Get the number of quotes containing the string 'fail'
  quote_list.select { |quote| quote[:text].include?("fail") }.count
end

def count_quotes_without_surnames(quote_list)
  result = quote_list.select do |quote|
    name = quote[:from].split(' ')
    quote[:from].split(' ').count == 1 && name != ['Unknown']
  end
  result.count
end

def find_a_quote(quote_list, author_name)
  # get the first quote in the list that matches the author
  quote_list.find do |quote|
    quote[:from] == author_name
  end
end

def number_of_quotes_grouped_by_author(quote_list, number_of_quotes)
  # return an array that filters authors that have authored *more* than a given number of quotes in the list"
  # example - If I call the method with 3, I should get something like:
  # [{"Aristotle" => 4,
  #   "Napoleon Hill" => 6}]
  list = []
  quotes = quote_list.map { |quote| quote[:from] }
  quotes = quotes.group_by { |i| i }.transform_values(&:size)
  quotes.each do |name, num|
    list << {name => num} if num > number_of_quotes
  end
  return list
end

p number_of_quotes_grouped_by_author(QUOTES, 5)