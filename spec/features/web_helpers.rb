def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in('email', with: 'newbie@gmail.com')
  fill_in('nom_name', with: 'newbie')
  click_button('Sign up')
end