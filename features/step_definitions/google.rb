Given(/^I have a browser instance$/) do

end

Given(/^I am on google$/) do
  visit 'http://www.google.de'
end

Then(/^The google page is loaded$/) do
  page.should have_css "#hplogo"
  page.should have_css "#lst-ib"

end

When(/^I enter random derp things$/) do
  fill_in "lst-ib", with:"random derp things"

end

When(/^I click on images$/) do
  find(:xpath,"*//a[text()='Bilder']").click
end

Then(/^I should see random derp things$/) do
  find("a[href*='Salamander']").click
end


When(/^I clicked on search$/) do
  first(".lsb").click
end