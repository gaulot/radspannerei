class Order < ActiveRecord::Base
  #include OrderExtensions::Scopes
  belongs_to :customer
  #validates_article :article
end
