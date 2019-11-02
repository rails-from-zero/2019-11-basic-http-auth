require 'rails_helper'

RSpec.describe Admin::PostsController do
  describe "GET #index" do
    subject(:perform_request) { get :index }
    it "prevents access" do
      perform_request

      expect(response.status).to eql(401)
    end

    context "with authentication" do
      before do
        request.env["HTTP_AUTHORIZATION"] =
          "Basic " + Base64::encode64("foo:bar")
      end

      it "allows access" do
        perform_request

        expect(response.status).to eql(200)
      end
    end
  end
end
