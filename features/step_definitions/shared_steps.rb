Given(/^I have an existing user account$/) do
  User.create!(name: "Kate", email: "kate@example.com", password: "password", birthday: "01/01/2000", phone_number: "5123006890", about_me: "Hello world!")
end

Given(/^another user account exists$/) do
  User.create!(name: "Matt", email: "matt@example.com", password: "password", birthday: "01/01/2000", phone_number: "5555555555", about_me: "Hello world!")
end

When(/^I visit "([^"]*)"$/) do |path|
  visit(path)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I click the link with id "([^"]*)"$/) do |arg1|
  page.find(arg1).click
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |content|
  assert page.has_content?(content)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  refute page.has_content?(content)
end

When(/^I debug$/) do
  puts page.html
  save_and_open_page
  binding.pry
end
