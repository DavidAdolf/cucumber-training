Given(/^I am on ebay$/) do
  landing_page_ebay.load
end

When(/^I click on search$/) do
  landing_page_ebay.search_button.click
end

Then(/^Input field is loaded$/) do
  landing_page_ebay.should have_search_input
end

When(/^I enter mario$/) do
  landing_page_ebay.search_input.set "mario wii u"
end

Then(/^Mario item are shown$/) do
  search_results_page_ebay.should have_search_results
end

When(/^I click on the first item$/) do
  search_results_page_ebay.search_results.first.click
end

Then(/^The product page is opened$/) do
  product_cart_page_ebay.should have_cart_button
end

