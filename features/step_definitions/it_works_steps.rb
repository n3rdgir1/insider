Given(/^the app is initialized$/) do
  #no-op
end

When(/^I visit the site$/) do
  visit '/'
end

Then(/^I see it is a rails app$/) do
  page.should have_content "Rails"
end
