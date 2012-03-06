#module OrderExtensions
#  module Scopes
#    def self.included(base)
#      base.class_eval do
#        scope :unprocessed, where('status = 1')
#        scope :ordered, where('status = 2')
#        scope :arrived, where('status = 3')
#        scope :picked_up, where('status = 4')
#      end # self.included
#  end # Calculations
#end # BookingExtensions
