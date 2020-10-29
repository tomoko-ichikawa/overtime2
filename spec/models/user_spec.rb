require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Creation" do
    before do
      @user = User.create(email: "test@test.com", password: "111111", password_confirmation: "111111", first_name: "sakura", last_name: "endo")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name,last_name" do
      @user.first_name = nil
      @user.first_name = nil
      expect(@user).to_not be_valid
    end
  end
end
