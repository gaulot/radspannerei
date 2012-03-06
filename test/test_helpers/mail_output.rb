module MailOutput
  OUTPUT_MAILS = true # Enable this if you want to see the text of all emails


  def MailOutput.included(mod)

    mod.teardown do
      if OUTPUT_MAILS
        puts "------------------------------------------------------------------------------------"
        puts @mail.subject
        puts "------------------------------------------------------------------------------------"
        puts @mail.body
        puts
        puts
      end
    end
  end
  
end
