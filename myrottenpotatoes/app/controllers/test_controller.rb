
@name = "this is a test : " 
class TestController < ApplicationController

	def index
		@f = Fest.new()
		@t = Try.new()

	end

	def C
		@name = "999"

	end
end

class Fest

	def initialize()
	end
        def A()
		@name = "111"

        end

end

class Try
	def initializa()
	end

	def B()
		@name = "123"

	end

end
