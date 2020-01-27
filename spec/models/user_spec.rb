require 'rails_helper'

RSpec.describe User, type: :model do
    describe "validations" do
        describe "email" do
            let(:user) { create(:user, email: email) }

            context "when the email is not in a correct format" do
                let(:email) { "foo" }

                it "raises an invalid record error" do
                    expect { user.save }.to raise_error(ActiveRecord::RecordInvalid)
                end
            end
        end
        
        describe "password" do
            let(:user) { create(:user, password: password) }

            context "when the password is six characters long" do
                let(:password) { "a" }

                it "raises an invalid password error" do
                    # due to length of the password
                    expect { user.save }.to raise_error(ActiveRecord::RecordInvalid)
                end
            end

            context "when the password is only composed of digits" do
                let(:password) { "1234567" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error(ActiveRecord::RecordInvalid)
                end
            end

            context "when the password is only composed of lowercase characters" do
                let(:password) { "abcdefghijklmnop" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error(ActiveRecord::RecordInvalid)
                end
            end

            context "when the password is only composed of upercase characters" do
                let(:password) { "ABCDEFGHIJK" }

                it "raises an invalid password error" do
                    expect { user.save }.to raise_error(ActiveRecord::RecordInvalid)
                end
            end
        end
    end
end