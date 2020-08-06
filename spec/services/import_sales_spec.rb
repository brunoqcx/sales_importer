RSpec.describe ImportSales, type: :service do
  describe '#call' do
    let(:file) { Rack::Test::UploadedFile.new("#{Rails.root}/example_input.tab") }
    subject { described_class.new(file).call }

    it "import successfully import sales" do
      expect{ subject }.to change { Sale.count }.by(4)
    end
  end
end
