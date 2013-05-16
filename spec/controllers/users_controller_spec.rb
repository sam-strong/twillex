require 'spec_helper'

describe UsersController do

  let(:attributes) {{:phone_number => "0712345678",:from_currency => "USD", :to_currency => "GBP", :name => "Jimmy" }}

  describe "#new" do

    it "assigns a new user as @user" do
      get :new
      assigns(:user).should be_a_new(User)
    end

    it "renders signup form" do
      get :new
      response.code.should eq("200")
      response.should render_template("new")
    end
  end

  describe "#create" do
    context "with valid attributes" do

      before { TwilioApi.any_instance.stub(:send_sms) }

      it "creates a new User" do

        expect {
        post :create, {:user => attributes }}.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {:user => attributes}
        assigns(:user).should be_a(User)
        assigns(:user).should be_persisted
      end

      it "redirects to the homepage after user is created" do
        post :create, {:user => attributes }
        response.should redirect_to(root_path)
      end

      it 'sends a welcome text'   do
        TwilioApi.any_instance.should_receive(:send_sms).with("0712345678", "Hey Jimmy you have signed up to convert USD to GBP! Twillex love xx!")
         post :create, {:user => attributes}
      end
    end

    context "with invalid attributes" do
      it "doesn't create a new user" do
        pending "at the moment it throws an exception we'll add proper error handling later"
        post :create, {:user => {  }}
        assigns(:user).should_not be_persisted
      end
    end
  end
end
