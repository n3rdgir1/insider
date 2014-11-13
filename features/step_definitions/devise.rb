When(/^I register$/) do
  visit root_path
  click_link "Sign up"
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password
  click_button :submit
end

Then(/^I am welcomed$/) do
  page.should have_content "Welcome #{email}"
end

def email
  'foo@bar.com'
end

def password
  'pass1234'
end
