require "pry"

def begins_with_r(array)
  answer = true
  array.each do |word|
    if word[0] != "r"
      answer = false
      break
    end
  end
  answer
end

def contain_a(array)
  newarray = []
  array.each do |word|
    if word.include? "a"
      newarray << word
    end
  end
  newarray
end

def first_wa(array)
  returnbasket = ""
  array.each do |wordy|
    if wordy[0..1] == "wa"
      returnbasket = wordy
      break
    end
  end
  returnbasket
end

def remove_non_strings(array)
  newarray = []
  array.each_with_index do |word, index|
    if array[index].is_a? String
      newarray << word
    end
  end
  newarray
end

def count_elements(array)
  results = []
  array.uniq.each do |word|
    counter = array.count(word)
    namekey = word[:name]
    hashbasket = {:count => counter}
    hashbasket[:name] = namekey
    results << hashbasket
  end
  results
end

def merge_data(keys, data)
  keys_array = keys
  data_array = data
  hash_output = {}

  keys_array.each_with_index do |keys_hash, keys_index|
    data_hash_temp = data_array[keys_index]
    keys_hash_temp = keys_hash
    hash_output = keys_hash_temp.merge(data_hash_temp)
  end
  hash_output
end
