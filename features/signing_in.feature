Feature: Signing in

	Scenario: Unsuccesful signin
		Given a user visits the valid signin page
		When they submit invalid signin information
		Then they should see an error message

	Scenario: Successful signin
		Given a user visits the valid signin page
			And the user has an account
		When the user submits valid signin information
		Then they should their profile page
			And they should see a signout link

			