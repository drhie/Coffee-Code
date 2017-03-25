require 'pry'

easy = "__1__ are sequences of anything, just as strings are sequences of characters. __2__ loops can be used to iterate through each element in a list, making it easier to do so than using a while loop. __3__ are simply assigned memory locations to store any kind of values. __4__ lists can have one or more lists inside them, while __4__ loops can also have one or more loops inside them."
medium = "A specific kind of loop is a __1__ loop, which repeats a statement or group of statements while a given condition is TRUE. A loop statment can be terminated by the __2__ command, which moves execution to the statement immediately following the __2__ command. __3__ are among the most widely seen types of elements in Python. They can be created by simply enclosing characters within quotes. The list.append() function does __4__ the list instead of creating a new one, unlike the + function which doesn't __4__, but creates a new list."

def wipe
  puts "\e[H\e[2J"
end

def replace(string, number, input)
  new_string = string.gsub(/#{number}/, "#{input}".upcase)
  new_string
end

def question(string, number, answer)
  status = false
  while status == false
    input = ask(number)
    if input.downcase == answer.downcase
      status = true
      p replace(string, number, input)
    end
  end
end

def ask(number)
  question = "\nWhat is the answer to blank ##{number}?"
  puts question
  input = gets.chomp
end

easy_answers = ["lists", "for", "variables", "nested"]
medium_answers = ['while','break','string','mutate']

def quiz(difficulty, answers)
  p difficulty
  (answers.length).times do |x|
    difficulty = question(difficulty, "__#{x+1}__", answers[x])
  end
end

quiz(easy, easy_answers)
