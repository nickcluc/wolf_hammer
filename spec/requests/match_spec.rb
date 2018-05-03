require 'rails_helper'

RSpec.describe 'Matches API', type: :request do
  # initialize test data
  let!(:matches) { create_list(:match, 10) }
  let(:match_id) { matches.first.id }

  # Test suite for GET /todos
  describe 'GET /matches' do
    # make HTTP get request before each example
    before { get '/api/v1/matches' }

    it 'returns todos' do
      # Note `json` is a custom helper to parse JSON responses
      expect(data_block).not_to be_empty
      expect(data_block.count).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
