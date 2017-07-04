require_relative '../pages/app' #use this so it has autocomplete within rubymine

Given(/^I am on the homescreen of the ios app$/) do
  startpage.checklocation
end

And(/^I complete the sign up of as an user$/) do
  startpage.signup
  registration.signup_random
  registration.spinner
  registration.spinner_text
end

Then(/^I see the welcome message$/) do
  wait {button 'Welcome'}
end