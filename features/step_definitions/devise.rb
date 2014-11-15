When(/^I register$/) do
  visit root_path
  click_link "Sign up"
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  fill_in 'user_password_confirmation', with: password
  click_button :submit
end

Given(/^I am signed in$/) do
  create_user
  visit root_path
  fill_in 'user_email', with: email
  fill_in 'user_password', with: password
  click_button :submit
end

Then(/^I can sign out$/) do
  click_link "Sign out"
end

Then(/^I am welcomed$/) do
  page.should have_content "Welcome #{email}"
end

def create_user(opts={})
  attrs = {
    email: email,
    password: password,
    password_confirmation: password,
  }.merge(opts)

  User.create(attrs)
end

def email
  'foo@bar.com'
end

def password
  'pass1234'
end
