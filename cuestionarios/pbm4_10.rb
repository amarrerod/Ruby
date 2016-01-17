class AClass
def a_method(a_block)
@hello = "I say"
puts "[ In AClass.a_method ] "
puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
puts "[ In AClass.a_method ] when block is called... "
a_block.call
end
end
a_closure = lambda {
@hello << " append!"
puts "in #{self} object of class #{self.class}, @hello = #{@hello}"
}
def a_method(a_closure)
@hello = "hello"
a_closure.call
end
a_method(a_closure)
data = AClass.new
data.a_method(a_closure)
