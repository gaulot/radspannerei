class Category < ActiveRecord::Base
  acts_as_nested_set
  attr_accessible :name, :parent_id
  has_many :internals

  def all_internals
    self_and_descendants.map{ |x| x.internals }.flatten
  end

end
