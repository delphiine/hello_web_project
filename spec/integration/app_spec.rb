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
  
  context "POST /sort-names" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = post('/sort-names')

      expect(response.status).to eq(200)
      # expect(response.body).to eq(expected_response)
    end

    it 'returns a list of names, sorted a-z' do
      response = post('/sort-names')

      expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
      # expect(response.body).to eq(expected_response)
    end
  end
end