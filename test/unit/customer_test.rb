require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  should validate_presence_of(:firstname)
  should validate_presence_of(:lastname)
  should validate_presence_of(:email) # Todo: es genügt, wenn es eine teleonnummer ODER eine email addresse gibt
  should validate_presence_of(:phon:phone)

  should have_many(:orders)
end
