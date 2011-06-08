require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe QuestionairesController do

  def mock_questionaire(stubs={})
    @mock_questionaire ||= mock_model(Questionaire, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all questionaires as @questionaires" do
      Questionaire.stub(:all) { [mock_questionaire] }
      get :index
      assigns(:questionaires).should eq([mock_questionaire])
    end
  end

  describe "GET show" do
    it "assigns the requested questionaire as @questionaire" do
      Questionaire.stub(:find).with("37") { mock_questionaire }
      get :show, :id => "37"
      assigns(:questionaire).should be(mock_questionaire)
    end
  end

  describe "GET new" do
    it "assigns a new questionaire as @questionaire" do
      Questionaire.stub(:new) { mock_questionaire }
      get :new
      assigns(:questionaire).should be(mock_questionaire)
    end
  end

  describe "GET edit" do
    it "assigns the requested questionaire as @questionaire" do
      Questionaire.stub(:find).with("37") { mock_questionaire }
      get :edit, :id => "37"
      assigns(:questionaire).should be(mock_questionaire)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created questionaire as @questionaire" do
        Questionaire.stub(:new).with({'these' => 'params'}) { mock_questionaire(:save => true) }
        post :create, :questionaire => {'these' => 'params'}
        assigns(:questionaire).should be(mock_questionaire)
      end

      it "redirects to the created questionaire" do
        Questionaire.stub(:new) { mock_questionaire(:save => true) }
        post :create, :questionaire => {}
        response.should redirect_to(questionaire_url(mock_questionaire))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved questionaire as @questionaire" do
        Questionaire.stub(:new).with({'these' => 'params'}) { mock_questionaire(:save => false) }
        post :create, :questionaire => {'these' => 'params'}
        assigns(:questionaire).should be(mock_questionaire)
      end

      it "re-renders the 'new' template" do
        Questionaire.stub(:new) { mock_questionaire(:save => false) }
        post :create, :questionaire => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested questionaire" do
        Questionaire.stub(:find).with("37") { mock_questionaire }
        mock_questionaire.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :questionaire => {'these' => 'params'}
      end

      it "assigns the requested questionaire as @questionaire" do
        Questionaire.stub(:find) { mock_questionaire(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:questionaire).should be(mock_questionaire)
      end

      it "redirects to the questionaire" do
        Questionaire.stub(:find) { mock_questionaire(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(questionaire_url(mock_questionaire))
      end
    end

    describe "with invalid params" do
      it "assigns the questionaire as @questionaire" do
        Questionaire.stub(:find) { mock_questionaire(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:questionaire).should be(mock_questionaire)
      end

      it "re-renders the 'edit' template" do
        Questionaire.stub(:find) { mock_questionaire(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested questionaire" do
      Questionaire.stub(:find).with("37") { mock_questionaire }
      mock_questionaire.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the questionaires list" do
      Questionaire.stub(:find) { mock_questionaire }
      delete :destroy, :id => "1"
      response.should redirect_to(questionaires_url)
    end
  end

end
