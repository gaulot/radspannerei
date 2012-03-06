module CustomValidations

  def validates_article(*attr_names)
    attr_names.each do |attr_name|
      validates_presence_of attr_name, :message => "Jeder Artikel muss  einen Namen haben."
    end
  end

end

ActiveRecord::Base.extend(CustomValidations)
