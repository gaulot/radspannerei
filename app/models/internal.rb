class Internal < ActiveRecord::Base
  belongs_to :category
  validates_article :article
end
