require 'spec_helper'

feature 'Registration' do
  scenario 'Registering a new user' do
    visit sign_up_path
    fill_in 'Вашият имейл', with: 'ivan@example.org'
    fill_in 'Парола', with: 'password'
    fill_in 'Паролата отново', with: 'password'
    fill_in 'Малко име', with: 'Иван'
    fill_in 'Фамилия', with: 'Петров'
    click_on 'Регистрация'

    expect(page).to have_content 'Добре дошли! Вие се регистрирахте успешно.'
  end
end
