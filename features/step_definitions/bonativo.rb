Given(/^Cache and cookies are deleted$/) do
  Capybara.reset_sessions!
end

Given(/^I am on the bonativo landing page$/) do
  visit "https://www.bonativo.de"
end


Then(/^The bonativo page is loaded$/) do
  find("#zipcodeBox")
end

When(/^I enter a zipcode from Berlin$/) do
  find("input[name='zipcodeInp']").set "10117"
end

When(/^I clicked on the next button$/) do
  find("button.zipcode").click
end

Then(/^I should see the Berlin bonativo page$/) do
  page.should have_css("#cms-products-header")
end

When(/^I click on meat$/) do
  all("#categories li a", visible: true)[3].click
end

Then(/^I should see the bonativo meat section$/) do
  page.should have_css("span.plus", visible: false)
end

When(/^I click on a item$/) do
  page.should have_css("div.itm-image")
  first("div.itm-image").click
end

Then(/^The PDP is opened$/) do
  find("span.submit")
end