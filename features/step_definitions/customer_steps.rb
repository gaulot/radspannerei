require File.expand_path('../../../spec/spec_helper', __FILE__)
require File.expand_path('../../support/paths', __FILE__)


Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^a customer named "([^\"]*) ([^\"]*)"$/ do |firstname, lastname|
 Factory.create(:customer, :lastname => lastname, :name => firstname)
end

Given /^a customer named "([^\"]*) ([^\"]*)" with email "([^\"]*)"$/ do |firstname, lastname, email|
  Factory.create(:customer, :lastname => lastname, :name => firstname, :email => email)
end


Given /^an order with article name "([^\"]*)" of the cusotmer named "([^\"]*) ([^\"]*)"$/  do |article_name, first_name, last_name|
  c = Customer.where(:name => first_name, :lastname => last_name).first || Factory.create(:customer, :lastname => lastname, :name => firstname)
  Factory.create(:order, :article_name => acticle_name, :customer => c)
end

Then /^we can find a customer named "([^\"]*) ([^\"]*)"$/ do |first_name, last_name|
  c = Customer.where(:name => first_name, :lastname => last_name).first
  assert_not_nil c
end

