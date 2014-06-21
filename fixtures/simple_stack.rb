
class Foo
  def do_stuff
    100.times do |i|
      puts i
    end
  end
end

class Bar < Struct.new(:foo)
  def run
    loop do
      work
    end
  end

  def work
    foo.do_stuff
  end
end

Bar.new(Foo.new).run
