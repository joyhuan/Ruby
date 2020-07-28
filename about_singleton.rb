# The idea of the singleton pattern is that you want a class with only one instance.
# How:
# You make the new method private
# You define a class method named instance that returns the unique instance for the class
require 'singleton'

class Shop
  include Singleton
end

# Why You Shouldn’t Use This Pattern
# The singleton pattern is often an excuse to have some form of global variable & we know global variables are bad
# because you have no control over them. This makes things harder to test & it can increase coupling.