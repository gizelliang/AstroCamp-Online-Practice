class Cat
    @@counter=0 
   def initialize
    @@counter+=1
   end
   def self.counter
    @@counter
   end
end

5.times {Cat.new}
p Cat.counter
