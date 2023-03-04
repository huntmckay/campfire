# hello.rb

puts "hello"

# but even cooler
myname = "hunter"
puts "hello #{myname}"

# even fancier

def name_printer (myname)
    
  if myname.class == String
     puts "hello my name is #{myname}"
  elsif myname.class == Integer
     puts "beep boop I am robot, my serial number is #{myname}"
  else
     raise "Strings or Integers only"
  end
end

name_printer "hunter"
name_printer 22
#name_printer(1.1)
