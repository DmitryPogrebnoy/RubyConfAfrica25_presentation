class MyPrinter
  def print_hello
    print "Hello "
    self
  end

  def print_ruby_developers
    print "Ruby developers 💎"
    self
  end

  def print_bang
    print "!"
    self
  end
end

MyPrinter.new.print_hello.print_ruby_developers.print_bang
# => Hello Ruby developers 💎!




