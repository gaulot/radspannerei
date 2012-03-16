class Order < ActiveRecord::Base
  #include OrderExtensions::Scopes
  belongs_to :customer
  #validates_article :article
  #
  STATES = [I18n.t(:unprocessed, :scope => [:order, :model, :states]), 
            I18n.t(:ordered, :scope => [:order, :model, :states]),
            I18n.t(:arrived, :scope => [:order, :model, :states]),  
            I18n.t(:picked_up, :scope => [:order, :model, :states]), 
            I18n.t(:undefined, :scope => [:order, :model, :states])]

  def status_as_string
    case self.status
      when 1 
        STATES[0]
      when 2
        STATES[1]
      when 3
        STATES[2]
      when 4
        STATES[3]
      else
        STATES[4]
    end
  end

  def self.search(search, page, status)
    if status && search.empty?
      return paginate(:per_page => 10, :page => page, :conditions => ['status = ?', status], :order => 'article')
    end
    if !status
      return paginate(:per_page => 10, :page => page, :conditions => ['status = ?', 0], :order => 'article')    
    end
    if !search.empty?
      return paginate(:conditions => ['article LIKE ? and status = ?', search, status], :order => 'article', :page => page)
    end 
  end


end
