require 'rails_helper'

RSpec.describe AddBooksController, type: :controller do

  describe "GET #scan" do
    it "returns http success" do
      get :scan
      expect(response).to have_http_status(:success)
    end
  end

end
