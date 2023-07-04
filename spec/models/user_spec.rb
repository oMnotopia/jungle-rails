require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    it 'validates presence of password & password confirmation fields' do
      @user = User.create(name: "Clayton", email: "f@a.com", password: "test11", password_confirmation: "test11")
      expect(@user).to be_valid
    end

    it 'ensures the password & password confirmation fields are the same' do
      @user = User.create(name: "Clayton", email: "f@a.com", password: "test11", password_confirmation: "test11")
      expect(@user.password).to eq(@user.password_confirmation)
    end
  end

  describe '.authenticate_with_credentials' do
    it 'should authenticate with credentials' do
      user = User.authenticate_with_credentials("a@a.com", "test")
      expect(user).not_to eq(nil)
    end

    it 'should not authenticate with bad credentials' do
      user = User.authenticate_with_credentials("a@a.com", "testerito")
      expect(user).to eq(nil)
    end

    it 'should still log in even if there are spaces before or after' do
      user = User.authenticate_with_credentials("   a@a.com   ", 'test')
      expect(user).not_to eq(nil)
    end

    it 'should log in the user even if the case is wrong for the email' do
      user = User.authenticate_with_credentials("A@A.com", 'test')
      expect(user).not_to eq(nil)
    end
  end
end
