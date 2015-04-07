def sign_up(user)
  visit root_path
  click_on 'Sign Up'
  fill_in 'Email', :with user.email
  fill_in 'Password', :with "password"
  fill_in 'Password confirmation', :with "password"
  click_on 'Sign up'
end

def sign_in(user)
  visit user_session_path
  fill_in 'Email', :with user.email
  fill_in 'Password', :with user.password
  click_button 'Log in'
end
