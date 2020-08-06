require 'rails_helper'

RSpec.describe SalesController, type: :controller do

  describe "GET #index" do
    let!(:first_sale) { Sale.create(item_price: 5, purchase_count: 2) }
    let!(:second_sale) { Sale.create(item_price: 10, purchase_count: 1) }

    before { get :index }

    it "returns a success response" do
      expect(response).to be_successful
    end

    it 'displays a correct current total gross income' do
      expect(assigns(:total_gross_income)).to eq(20)
    end
  end

  describe "POST #import" do  
    let(:file) { Rack::Test::UploadedFile.new("#{Rails.root}/example_input.tab") }

    let(:request) { post :import, params: { file: file } }

    it "import successfully import sales" do
      expect{ request }.to change { Sale.count }.by(4)
    end
  end
end