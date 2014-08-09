require 'spec_helper'

feature 'Login' do
  before do
    create :user, email: 'ivan@example.org',
              password: 'password',
              password_confirmation: 'password',
              first_name: 'Иван'
  end

  scenario 'Logging in with correct credentials' do
    visit sign_in_path
    fill_in 'Вашият имейл', with: 'ivan@example.org'
    fill_in 'Вашата парола', with: 'password'
    check 'Запомни ме'
    click_button 'Вход'

    page.should have_content 'Иван'
    page.should have_content 'Влязохте успешно'
  end

  scenario 'Logging in with wrong credentials' do
    visit sign_in_path
    fill_in 'Вашият имейл', with: 'ivan@example.org'
    fill_in 'Вашата парола', with: 'wrong_password'
    check 'Запомни ме'
    click_button 'Вход'

    page.should have_content 'Невалиден имейл адрес или парола.'
    page.should_not have_content 'Влязохте успешно'
  end
end
