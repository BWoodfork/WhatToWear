require 'spec_helper'
 
describe App do
  context 'the home page' do
    it 'loads the home page' do
      get '/'

      last_response.should be_ok
    end
  end
end

