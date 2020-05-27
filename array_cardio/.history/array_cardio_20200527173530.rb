require 'pry-byebug'

# WARMUP 🏃

def get_first(arr)
  # Get the first element of the array
  arr[0]
end

def get_last(arr)
  # Get the last element of the array
  arr[-1]
end

def get_at_index(arr, index)
  # Fetch an element in the array at the specified index
  arr[index]
end

def pop_first(arr)
  # Take the first element out of the array
  arr.shift
end

def eliminate_repeat_values(arr)
  # gets rid of all repeated values in an array
  arr2 = arr.select { |e| arr.count(e) > 1 }
  arr - arr2
end

def merge_arrays(arr, other_arr)
  # merge two arrays together (ex.)
  # merge_arrays(["a", "b"], ["c", "d"])
  # => ["a", "b", "c", "d"]
  arr + other_arr
end

# WORKOUT 🏋

def join_values(arr, other_arr)
  # gets all common values in two arrays (ex.)
  # merge_arrays(["a", "b", "c"], ["c", "z", "y"])
  # => ["c"]
  arr & other_arr
end

def excluded_values(arr, other_arr)
  # gets all non-shared values in two arrays (ex.)
  # merge_arrays(["a", "b", "c"], ["c", "z", "y"])
  # => ["a", "b", "z", "y"]
  arr & other_arr
end

def subtraction(arr, other_arr)
  # take away values in arr that are also present in other arr (ex.)
  # subtraction(["a", "b", "c"], ["c", "z", "y"])
  # => ["a", "b"]
  arr - other_arr
end

def all_even_at_start(arr)
  # given an array, get all even values at the beginning of it (ex.)
  # all_even_at_start([1,2,3,4,5,6])
  # => [2,4,6,1,3,5]
  # all_even_at_start([1,2,2,2,3])
  # => [2,2,2,1,3]
  arr2 = []
  arr.each { |num| arr2 << num if num.even? }
  arr -= arr2
  arr2 + arr
end

def acronym(arr)
  # given an array of words, return a string
  # that makes an acronym
  # acronym(["Grim", "Fandango"])
  # => "G.F."
  # acronym(["Cash", "Rules", "Everything", "Around", "Me"])
  # => "C.R.E.A.M."
  arr = arr.map do |word|
    word.chars.first
  end
  arr.join('.') + '.'
end

def stop_sign(arr)
  # given an array of words, take all values until you find the word "STOP"
  # (ex.)
  # stop_sign(["Hi", "my", "name", "is", "STOP", "Slim", "Shady"])
  # => ["Hi", "my", "name", "is"]
end



