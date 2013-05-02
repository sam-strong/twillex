require 'spec_helper'

describe UsersController do

  describe "#new" do
    context "for user signup" do
      it "renders signup form" do
        user = User.new
        get :new
        response.code.should eq("200")
        response.should render_template("new")
        assigns(:user).should be_a_new(User)
      end
    end
  end

    describe "#create" do
      it "redirects to the created user" do
        post :create, {:user => {}}
        response.should redirect_to(root_path)
      end
    end


end
