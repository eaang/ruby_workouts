# WARMUP 🏃 - No need for tests, play with the methods on irb

def total_number(people_list)
  # get the total number of people
end

def swap_first_and_last(people_list)
  # the first person should be the first,
  # and the last should be the first
end

def all_uppercase(people_list)
  # return the same array, but uppercase all names
end

def all_wo_a(people_list)
  # filter out all members of the list that have an "a" on their names
end

def all_even_surnames(people_list)
  # filter by people whose surname length is even
  # "Jimenez, Miguel" => false, jimenez has 7 characters
  # "Aulia, Prima" => false, aulia has 5 characters
  # "Tang, Rachel" => true, tang has 4 characters
end

def only_first_names(people_list)
  # Filter the people on the list with only one name
  # "Tolkien, J.R.R." => false
  # "Jay-Z" => true
  # "Prince" => true
end

def first_and_last
  # transform the list format from
  # ["last_name, first_name"]
  # ["first_name, last_name"]
end

# WORKOUT 🏋 - run rspec in your terminal to check your results

def longest_quote(quote_list)
  # Get the longest quote on the list!
end

def count_fail_quotes(quote_list)
  # Get the number of quotes containing the string 'fail'
end

def count_quotes_without_surnames(quote_list)
  # get the number quotes from authors with no surnames. Disregard quotes with unknown authors
end

def find_a_quote(quote_list, author_name)
  # get the first quote in the list that matches the author
end

def number_of_quotes_grouped_by_author(quote_list, number_of_quotes)
  # return an array that filters authors that have authored *more* than a given number of quotes in the list"
  # example - If I call the method with 3, I should get something like:
  # [{"Aristotle" => 4,
  #   "Napoleon Hill" => 6}]
end


