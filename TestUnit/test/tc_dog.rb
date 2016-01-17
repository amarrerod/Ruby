
require 'test/unit'
require 'lib/dog'

class TestCaseDog < Test::Unit::TestCase

    def setup
        @dog = Dog.new("Pluto", "Dalmata")
    end
    
    def teardown
        #nothing really
    end
    
    def test_simple
        assert_equal(@dog.name,"Pluto")
        assert_equal(@dog.talk, "Woof")
        assert_equal(@dog.breed,"Dalmata")
    end
    
    def test_no_equal
        assert_not_equal(@dog.name,"Ray")
        assert_not_equal(@dog.talk,"Miau")
    end
end