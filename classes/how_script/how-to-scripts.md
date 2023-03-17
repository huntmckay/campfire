# How to Script

'Script' Definition:

logical sequence of steps of a simple program. Typically a plain-text file

Scripts are formated in such a way that a specific "interpreter" can "____"

Scripts are typically handmade by users, and executed by users, or scheduled. 

My rule of thumb used to be "if you have to more then 3 times, write a script and automate it"

Now I take the time to understand my problem and think "can I automate this?" the answer is nearly always yes, but the limiting factor is I am not good enough yet. We get good by forcing ourselves to do it.


# OUT OF SCOPE:

- Modules are typically meant to be imported to aid the user in doing something a bit easier. 
- Breakpoints and debuggers

# Syntax Vs Semantics 

The syntax of a programming language describes which strings of of characters comprise a valid program. The semantics of a programming language describes what syntactically valid programs mean, what they do. In the larger world of linguistics, syntax is about the form of language, semantics about meaning.

---
# how-to-python.py
[link](https://realpython.com/run-python-scripts/)
[interact with python](https://realpython.com/interacting-with-python/)
Python is often refered to as a Programming language, but it is also the name of the interepter. 

An interpreted language needs a piece of software between the user and the computer that will convert the high-level code into something more useable by the computer. An interpreter can be written in C, Java, Python or .NET (we wont go deep into this).

With the python interpreter there are two ways to execute code:
1. As a script or module
2. Directly run in the interpreter prompt

## Tutorial 1 python scripting 

vim hello.py

## Tutorial 2 python interpreter

open a shell and type `python3`

```powershell
PS C:\Projects\campfire> python.exe
Python 3.10.10 (tags/v3.10.10:aad5f6a, Feb  7 2023, 17:20:36) [MSC v.1929 64 bit (AMD64)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

## Check on learning Python

** IDK NEEDS TEST **

# how_to_ruby.rb

Step 1: google ruby and figure out how it works

A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write. ...according to their website

Step 2: install ruby and its interepter
sudo apt install ruby irb -y 
https://www.ruby-lang.org/en/documentation/

## Ruby Scripting Tutorial 1

vim hello.rb

## Ruby Scripting Tutorial 2

irb -v (gives irb version)
irb

## Ruby Check on Learning

** IDK NEEDS TEST **

# how_to_bash.sh

Bash is a command-line interpreter and it is widely used for automation and system administration of GNU/Linux Operating Systems. 
Bourne Again SHell

pretty much everything linux is going to run 

file needs to start with shebang (#!)
needs to be executable (chmod +x hello.sh)
does not need to end with .sh

for all intents and purposes bash is going to spawn a new process for each command and treats it as such. a bash script is a large collection of instructions.

## Bash Scripting Tutorial 1

vim hello.sh

# how_to_powershell.ps1

PowerShell is a cross-platform task automation solution made up of a command-line shell, a scripting language, and a configuration management framework.

It is often found on Windows, but can be used in other places where it may be installed. 

If Bash is the command line interpreter for linux, powershell is the command line interpreter for windows

## Powershell Scripting Tutorial 1

vim hello.ps1

# Final Thoughts

Python - Portable and easy to learn, most common
Ruby - Portable and easy to learn, less common
Bash - fairly specific to linux, lots of documentation, will make you a better linux sysad
powershell - fairly specific to windows (getting better with .net), lots of  really good documentation, will make you a better windows sysad
