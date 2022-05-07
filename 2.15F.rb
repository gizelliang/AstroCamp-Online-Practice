class Cat
    private
    def gossip
      puts "idiot"
    end
end

kitty=Cat.new
kitty.send(:gossip)