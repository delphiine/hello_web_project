require "spec_helper"
require_relative "../../app"
require "rack/test"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/names')

      expect(response.status).to eq(200)
    end

    it 'returns names' do
      response = get('/names')

      expect(response.body).to eq("Julia, Mary, Karim")
    end
  end
end