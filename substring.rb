def substring(sentence, dictionary)
  
  final_count = dictionary.reduce(Hash.new(0)) do |count, word|
    word = word.downcase
    sentence = sentence.downcase
    if sentence.scan(word).length > 0
      count[word] += sentence.scan(word).length
    end
    count
  end
  puts final_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("Howdy partner, sit down! How's it going?", dictionary)
