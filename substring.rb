dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(str, dict)
    array = str.split(" ")
    output = []
    array.each {|word| 
        dict.map {|check|
           if word.match?(check) 
            then output.push(check)
           end
        }
    }
    output.reduce(Hash.new(0)) do |key,value|
        key[value] += 1
        key
    end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
p substrings("below", dictionary)
p substrings("", dictionary)