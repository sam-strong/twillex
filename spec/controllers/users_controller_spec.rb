require 'spec_helper'

  describe UsersController do

      let(:attributes) {{:phone_number => "0712345678",:from_currency => "USD", :to_currency => "GBP" }}

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

        context "with invalid attributes" do
          it "doesn't create a new user" do
            post :create, {:user => {  }}
            assigns(:user).should_not be_persisted
          end
        end
      end
    end
  end
