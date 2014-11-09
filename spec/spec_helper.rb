if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear!
end

require 'factory_girl_rails'
require 'rspec/its'
require 'devise'

RSpec.configure do |config|

  module OneLinerExpectSyntax
    def expects(subject)
      expect(subject)
    end
  end  

  config.include OneLinerExpectSyntax
  config.include Devise::TestHelpers, :type => :controller

end
