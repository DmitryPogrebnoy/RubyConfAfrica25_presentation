def say_hello
  puts "Hello Ruby developers 💎!"
end

method_object = method(:say_hello)
iseq = RubyVM::InstructionSequence.of(method_object)

puts iseq.disasm



