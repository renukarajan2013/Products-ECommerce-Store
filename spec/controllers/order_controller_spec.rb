require 'rails_helper'

RSpec.describe OrderController, :type => :controller do

  describe "GET cart" do
    it "returns http success" do
      get :cart
      expect(response).to be_success
    end
  end

end
