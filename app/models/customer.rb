require 'resolv'

class Customer < ActiveRecord::Base
  has_many :orders

 
  EMAIL_PATTERN  = /(\S+)@(\S+)/
  SERVER_TIMEOUT = 3 #seconds

  validates_format_of :email, :with => EMAIL_PATTERN
  validate :validate_email




  def valid_domain?(email)
    domain = email.match(EMAIL_PATTERN)[2]
    dns    = Resolv::DNS.new

    Timeout::timeout(SERVER_TIMEOUT) do

      mx_records = dns.getresources(domain, Resolv::DNS::Resource::IN::MX)

      mx_records.sort_by{ |mx| mx.preference}.each do |mx|
        a_records = dns.getresources(mx.exchange.to_s, Resolv::DNS::Resource::IN::A)
        return true if a_records.any?
      end

      a_records = dns.getresources(domain, Resolv::DNS::Resource::IN::A)
      a_records.any?
    end
  rescue Timeout::Error, Errno::ECONNREFUSED
    false
  end


  def validate_email
    if errors[:email].empty?
      unless valid_domain?(email)
        errors.add(:email, 'Die email scheint falsch zu sein.')
      end
    end
  end

  def self.search(search, page, letter)
    search_text = letter.blank? ? "%#{search}%" : "#{letter}%"
    if(letter || search)
      paginate(:page => page, :conditions => ['lastname LIKE ?', search_text], :order => 'lastname')
    else
      paginate(:per_page => 8, :page => page, :conditions => ['lastname LIKE ?', search_text], :order => 'lastname')
    end

  end



end
