Given /^a user visits the valid signin page$/ do 
  visit signin_path
end

When /^they submit invalid signin information$/ do
  click_button "Sign in"
end

Then /^they should see an error message$/ do
  expect(page).to have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
    password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^they should their profile page$/ do
    expect(page).to have_title(@user.name)
  end

Then /^they should see a signout link$/ do
  expect(page).to have_link('Sign out', href: signout_path)
end


  
#   #   Given a user visits the valid signin page
#   #   When they submit invalid signin information
#   #   Then they should see an error message

#   # Scenario: Successful signin
#   #   Given a user visits the signin page
#   #     And the user has an account
#   #   When the user submits valid signin information
#   #   Then they should their profile page
#   #     And they should see a signout link