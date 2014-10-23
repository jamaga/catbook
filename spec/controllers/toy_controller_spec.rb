require 'rails_helper'

RSpec.describe ToyController, :type => :controller do

  describe "GET add" do
    it "returns http success" do
      get :add
      expect(response).to be_success
    end
  end

end
