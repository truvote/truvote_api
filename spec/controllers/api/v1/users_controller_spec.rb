require 'rails_helper'

RSpec.describe Api::V1::UsersController do
    describe "#create" do
        let(:subject) { post :create, params: params }
        let(:params) { { user:  { first_name: "Foo", last_name: "Bar", email: "foo@bar.com", password: "123abc" } } }

        it "returns a 200 response" do
            subject
            expect(response.status).to eq(200)
        end

        it "creates a new user with the params" do
            subject
            user = User.last

            expect(user.first_name).to eq("Foo")
            expect(user.last_name).to eq("Bar")
            expect(user.email).to eq("foo@bar.com")
        end
    end

    # todo: add #update specs
end
