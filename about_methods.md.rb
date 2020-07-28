require File.expand_path(File.dirname(__FILE__) + '/neo')

# ------------------------------------------------------------------

def my_method_in_the_same_class(a, b)
  a * b
end

def test_calling_methods_in_same_class
  assert_equal 12, my_method_in_the_same_class(3,4)
end

def test_calling_methods_in_same_class_with_explicit_receiver
  assert_equal 12, self.my_method_in_the_same_class(3,4)
end

# ------------------------------------------------------------------

def my_private_method
  "a secret"
end
private :my_private_method

def test_calling_private_methods_without_receiver
  assert_equal "a secret", my_private_method
end

if before_ruby_version("2.7")   # https://github.com/edgecase/ruby_koans/issues/12
  def test_calling_private_methods_with_an_explicit_receiver
    exception = assert_raise(___) do
      self.my_private_method
    end
    assert_match /private method `my_private_method' called for/, exception.message
  end
end