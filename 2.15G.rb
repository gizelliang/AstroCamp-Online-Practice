class Animal
end

module Flyable
    def fly
        puts " who can fly is an idiot"
   end
end

class Bird < Animal
    include Flyable
end

tweety=Bird.new
tweety.fly
