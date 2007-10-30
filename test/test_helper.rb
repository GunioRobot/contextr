require 'rubygems'
require 'test/unit'

require File.dirname(__FILE__) + '/../lib/contextr'

%w{example literate_markaby literate_maruku}.each do |lib|
  require File.dirname(__FILE__) + "/lib/#{lib}_test"
end

if PLATFORM == "java"
  class Markaby::Builder
    def pre_block(block)
    end
  end
end
