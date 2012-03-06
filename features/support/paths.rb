module NavigationHelpers
  def path_to(page_name)
    case page_name
      when /the customers page/
        customers_path  # rails routing helper method
      when /the new customer page/
        new_customer_path  # rails routing helper method
    end
  end
end


World(NavigationHelpers)
