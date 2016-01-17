

class Review
    
    attr_accessor :x
    def initialize (arg)
        @x = arg
    end
    def *(other)
        #raise ArgumentError, 'Not Review type' unless other.is_a?(Review)
        aux = @x*other
        aux
    end
    def coerce(other)
        [self,other]
    end
    private_class_method :new
    def Review.maker(arg)
        new(arg)
    end
end

r = Review.maker(5)
puts(r*1)
# => puts(1*r)
# =>Al intentar ejecutar nos devuelve un error
# =>coerce.rb:18:in `*': Review can't be coerced into Fixnum (TypeError)
#        from coerce.rb:18:in `<main>'
puts(1*r)