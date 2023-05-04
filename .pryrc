begin
  require "awesome_print"
  AwesomePrint.defaults = {
    ruby19_syntax: true,
    indent: -4
  }
  AwesomePrint.pry! if defined?(AwesomePrint)
rescue LoadError
  nil
end

begin
  require "amazing_print"
  AmazingPrint.defaults = {
    ruby19_syntax: true,
    indent: -4
  }
  AmazingPrint.pry! if defined?(AmazingPrint)
rescue LoadError
  nil
end

# Handy hotkeys for debugging!
if (defined? PryByebug) || (defined? PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end
