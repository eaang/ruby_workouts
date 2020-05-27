require 'rspec'
require_relative '../array_cardio.rb'

context 'Array Cardio' do
  describe'#get_first' do
    it 'gets the first element of an array' do
      arr = ["prima", "guido", "miguel"]
      expect(get_first(arr)).to eq "prima"
    end
  end

  describe'#get_last' do
    it 'gets the last element of an array' do
      arr = ["prima", "guido", "miguel"]
      expect(get_last(arr)).to eq "miguel"
    end
  end

  describe'#get_at_index' do
    it 'gets the right element at the right index' do
      arr = ["prima", "guido", "miguel"]
      expect(get_at_index(arr, 0)).to eq "prima"
      expect(get_at_index(arr, 1)).to eq "guido"
      expect(get_at_index(arr, 2)).to eq "miguel"
    end
  end

  describe'#pop_first' do
    it 'gets rid of the first element of the array' do
      arr = ["prima", "guido", "miguel"]
      result = pop_first(arr)
      expect(result).to eq "prima"
      expect(arr.length).to eq 2
      expect(arr[0]).to eq "guido"
    end
  end

  describe'#eliminate_repeat_values' do
    it '#gets rid of all repeated values in an array' do
      arr = [1, 2, 3, 1, 1, 1]
      result = eliminate_repeat_values(arr)
      expect(result.include?(1)).to eq false
    end
  end

  describe'#merge_arrays' do
    it '#returns two arrays into one' do
      arr = [1, 2, 3]
      other_arr = [4, 5, 6]
      result = merge_arrays(arr, other_arr)
      expect(result).to eq [1,2,3,4,5,6]
    end
  end

  describe'#join_values' do
    it 'returns the intersection of two arrays' do
      arr = ["a", "b", "c"]
      other_arr = ["c", "f", "g"]
      result = join_values(arr, other_arr)
      expect(result).to eq ["c"]
    end
  end

  describe'#excluded_values' do
    it 'returns the values that are not shared between two arrays' do
      arr = ["a", "b", "c"]
      other_arr = ["c", "f", "g"]
      result = excluded_values(arr, other_arr)
      expect(result).to eq ["c"]
    end
  end


  describe '#subtraction' do
    it 'returns the values all values in the first array that are not in the second array' do
      arr = ["a", "b", "c"]
      other_arr = ["c", "f", "g"]
      result = subtraction(arr, other_arr)
      expect(result).to eq ["a", "b"]
    end
  end

  describe '#all_even_at_start' do
    it 'get all even values at the beginning of the array' do
      arr = [1, 2, 3, 4, 5, 6]
      result = all_even_at_start(arr)
      expect(result).to eq [2, 4, 6, 1, 3, 5]
    end

    it 'get all even repeat values at the beginning of the array' do
      arr = [1, 2, 2, 2, 2, 3]
      result = all_even_at_start(arr)
      expect(result).to eq [2, 2, 2, 2, 1, 3]
    end
  end

  describe "#acronym" do
    it 'returns G.F. for Grim Fandango' do
      arr = ["Grim", "Fandango"]
      result = acronym(arr)
      expect(result).to eq "G.F."
    end

    it 'returns C.R.E.A.M. for cash rules everything around me' do
      arr = ["cash", "rules", "everything", "around", "me"]
      result = acronym(arr)
      expect(result).to eq "C.R.E.A.M."
    end
  end

  describe "#stop_sign" do
    it 'returs the same array until the word STOP is found' do
      result = stop_sign(["Hi", "my", "name", "is", "STOP", "Slim", "Shady"])
      expect(result).to eq ["Hi", "my", "name", "is"]
    end
  end
end

