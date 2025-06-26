def say_hello = puts "Hello Ruby developers 💎!"
def say_goodbye = puts "Goodbye Ruby developers 💎!"

iseq = RubyVM::InstructionSequence.of(method(:say_hello))
trace = TracePoint.new(:call) do |tp|
  puts "Calling method '#{tp.method_id}'"
end

trace.enable(target: iseq)

say_hello
say_goodbye
# => Calling method 'say_hello'
# => Hello Ruby developers 💎!
# => Goodbye Ruby developers 💎!


