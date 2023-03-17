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
     puts "name input '#{myname}' is date type'#{myname.class}'"
     raise "Input for name can only be a string or integer"

  end
end

name_printer "hunter"
name_printer 12341234
name_printer 1.1
