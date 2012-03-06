require 'test_helper'

class InternalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_validation_succeds
    a = Internal.new(:article => "Fahrradhelm")
    assert a.valid?
  end

  def test_validation_fails
    a = Internal.new
    assert !a.valid?
    assert_equal("Jeder Artikel muss einen Namen haben", a.errors(:article))
  end

end
