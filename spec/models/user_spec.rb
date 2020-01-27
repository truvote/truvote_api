require 'rails_helper'

RSpec.describe User, type: :model do
    describe "validations" do
        describe "password" do
            let(:user) { create(:user, password: password) }

            context "when the password is six characters long" do
                let(:password) { "a" }

                it "raises an invalid password error" do
                    # due to length of the password
                    expect { user.save }.to raise_error
                end
            end

            context "when the password is only composed of digits" do
                let(:password) { "1234567" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error
                end
            end

            context "when the password is only composed of lowercase characters" do
                let(:password) { "abcdefghijklmnop" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error
                end
            end

            context "when the password is only composed of upercase characters" do
                let(:password) { "ABCDEFGHIJK" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error
                end
            end
        end
    end
end