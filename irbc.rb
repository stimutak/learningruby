## Libraries
require 'rubygems'
require 'wirble'
require 'pp' 
 
## Wirble
Wirble.init
Wirble.colorize
 
## Prompt
IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => ">> ",
  :PROMPT_S => "%l>> ",
  :PROMPT_C => ".. ",
  :PROMPT_N => ".. ",
  :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true
 
## Aliases
alias q exit
 
## Custom functions
# easily print methods local to an object's class
class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end
 
def dumphist(num, path)
  File.open(path, 'w') do |file|
    Readline::HISTORY.to_a[-num-1..Readline::HISTORY.length-3].each do |line|
      file.puts line
    end
  end
end
 
# clear screen
def clear
  system 'clear'
end