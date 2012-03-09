class Order < ActiveRecord::Base
  #include OrderExtensions::Scopes
  belongs_to :customer
  #validates_article :article

  def status_as_string
    case self.status
      when 1 
        "unbearbeitet"
      when 2
        "bestellt"
      when 3
        "angekommen"
      when 4
        "ausgehaendigt"
      else
        "ungeklaert"
    end
  end

end
