require 'rails_helper'

RSpec.describe ContactFormsController,type: :controller do
  describe "GET index" do
    it "returns hhtp success" do
      get "index"
      response.should be_success
    end

  end

  describe "POST #create" do
     context "with valid attributes" do
       it "create new contact" do
         post :create, :contact_forms=> attributes_for(:contact_forms)
         expect(ContactForm.count).to eq(1)
       end
     end
  end

end