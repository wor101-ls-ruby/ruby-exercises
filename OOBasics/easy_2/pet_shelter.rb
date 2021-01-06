class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
  
  def to_s
    "a #{type} named #{name}"
  end
  
end

class Owner
  attr_reader :name
  attr_accessor :number_of_pets
  attr_accessor :pets
  
  def initialize(name)
    @name = name
    @number_of_pets = 0
    @pets =[]
  end
  

  
end

class Shelter

  
  def initialize
    @owners = []
    @unadopted_pets = []
  end

  def adopt(owner, pet)
    owner.pets << pet
    owner.number_of_pets += 1
    @owners << owner if @owners.include?(owner) == false
  end
  
  def rescue_pet(pet)
    @unadopted_pets << pet
  end
  
  def number_of_unadopted_pets
    @unadopted_pets.size
  end
  
  def print_available_adoptions
    puts "The Animal Shelter has the following unadopted pets:"
    @unadopted_pets.each do |pet|
      puts pet.to_s
    end
  end
  
  def print_adoptions
    @owners.each do |owner|
      puts "#{owner.name} has adopted the following pets:"
      owner.pets.each do |pet|
        puts "a #{pet.type} named #{pet.name}"
      end
      puts ""
    end
  end
  
  
end



butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'Fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatterbox   = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')


phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
wrossen = Owner.new('W Rossen')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)


shelter.rescue_pet(asta)
shelter.rescue_pet(laddie)
shelter.rescue_pet(fluffy)
shelter.rescue_pet(kat)
shelter.rescue_pet(ben)
shelter.rescue_pet(chatterbox)
shelter.rescue_pet(bluebell)

shelter.print_adoptions
shelter.print_available_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal Shelter has #{shelter.number_of_unadopted_pets} unadopted pets."

# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.