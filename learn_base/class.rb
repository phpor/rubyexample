class Person
	#attr_accessor :name
	def initialize(name)
		@name = name
	end
	def hello()
		puts("hello #{@name}")
	end

	#like attr_reader :name
	def name
		return @name
	end

	# like attr_writer :name
	def name=(val)
		@name = val
	end

end
p = Person.new("phpor")
p.hello()
puts(p.name)
p.name = "jack"
puts(p.name)
