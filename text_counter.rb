


def prompt_user
    puts "Please enter your file path"
    path = gets.chomp

    open_file(path)
end 

def open_file(path)
    text = File.read(path)
    words = text.split(' ')
    sort_words(words)
end 

def sort_words(words)
    word_hash = Hash.new

    words.each{|word| word = word.capitalize()
    if word_hash[word]
        
        word_hash[word] = word_hash[word] + 1
    else 
        word_hash[word] = 1
    end 
    }

    sorted_words = word_hash.sort{ |a, b| b[1] <=> a[1]}

    display_results(sorted_words)
end 

def display_results(sorted_words)
    sorted_words.each{|word| puts " #{word[1]} #{word[0]}"}
end 




prompt_user






 