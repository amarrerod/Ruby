
require 'test/unit'
require 'lib/dog'
require 'lib/eagle'
class TestCaseDog < Test::Unit::TestCase

    def setup
        
        @dog = Dog.new("Pluto", "Dalmata",10)
        @hijo = Dog.new("Children", "Dalmata",0)
        @hijoDos = Dog.new("SecondChildren","Dalmata",5)
        @eagle = Eagle.new
    end
    
    def teardown
        #nothing really
    end
    
    def test_simple
        assert_equal(@dog.name,"Pluto")
        assert_equal(@dog.respond_to?(:talk), false)
        assert_equal(@dog.breed,"Dalmata")
        assert_equal(@dog.age,10)
    end
    
    def test_no_equal
        assert_not_equal(@dog.name,"Ray")
    end
    
    def test_comparable
        assert_equal((@hijoDos>=@hijo),true)
    end
    
    def test_hierarchy
        assert_equal(@dog.is_a?(Animal),true)
        assert_equal(@dog.is_a?(Mamifero),true)
    end
    def test_hierarchy_methods
        assert_equal(@dog.eat,"I eat meat")
        assert_equal(@dog.moving,"I move myself by feets")
    end
    
    def test_eagle
        assert_equal(@eagle.is_a?(Eagle),true)
        assert_equal(@eagle.is_a?(Animal),true)
        assert_equal(@eagle.moving,"I move myself by wings")
    end
    
end