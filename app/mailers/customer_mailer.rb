class CustomerMailer < ActionMailer::Base
  default from: "info@radspannerei.de"

  def order_arrived_email(order)
    @order = order
    @customer = @order.customer
    mail(:to => @customer.email, :subject => "Deine Bestellung bei der Radspannerei")
  end

end
