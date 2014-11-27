require 'tempfile'

When(/^I go to my characters$/) do
  click_link "My Characters"
end

When(/^I upload my chacter sheet$/) do
  attach_file(:file, File.join(File.dirname(__FILE__), '../', '../' 'fixtures', 'shara.dnd4e'))
  click_button "Upload character"
end

Then(/^I see that it was a success$/) do
  page.should have_content "Successfully uploaded Shara"
  within('.characters') do
    page.should have_content "Shara"
  end
end

When(/^I upload something that is not a character sheet$/) do
  attach_file(:file, File.join(File.dirname(__FILE__), '../', 'support', 'env.rb'))
  click_button "Upload character"
end

Then(/^I see that is not the correct file type$/) do
  page.should have_content "Please upload a valid .xml or .dnd4e file"
end
