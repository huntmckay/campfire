write-output 'hello'

# but cooler
$myname = 'hunter'
write-output "hello my name is $myname"

# but functional 
function name_printer($myname) {
        
        if ($myname.getType().Name -eq "String") {
                Write-Output "Hello my name is $myname"
        }
        elseif ($myname.getType().Name -eq "Int32") {
                Write-Output "beep boop I am a robot, my serial number is $myname"
        }
        else {
                write-warning "Input for name can only be a string or integer"
                write-warning "name input '$myname' is date type: $($myname.gettype().name)"
                break 
        }
}

name_printer('hunter')
name_printer(12341234)
name_printer(1.1)
