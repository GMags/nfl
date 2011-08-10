require 'helper'

describe NFL::Client::Draft::AllTimeNo2 do
  before(:each) do
    @client = NFL::Client.new
  end

  describe '#draft_all_time_no_2' do
    describe 'with no parameters' do
      it 'gets the raw HTML' do
        path = 'www.nfl.com/draft/history/alltimeno2'

        stub_request(:get, path) \
          .to_return(:status => 200, :body => fixture(path).read)

        @client.send(:draft_all_time_no_2).should eq fixture(path).read
      end
    end
  end
end
