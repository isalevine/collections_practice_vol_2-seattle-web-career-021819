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
  merger = []
  keys.each_with_index do |keyhash, indexnum|
    namecheck = keyhash[:first_name]
    hash1data = data[indexnum]
    hash2data = hash1data[namecheck]
    output = keyhash.merge(hash2data)
    merger << output
  end
end
