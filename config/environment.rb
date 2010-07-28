# Load the rails application
require File.expand_path('../application', __FILE__)


if not $SPEEDUP_LIBCACHE and ENV['RAILS_ENV'] != 'production'
  # speedup Rails 3 startup by 30% on Windows
  $SPEEDUP_LIBCACHE = {}
  module Kernel
    alias chained_require require
    def require(path)
      $SPEEDUP_LIBCACHE[path] ||= chained_require path
    end
    private :require
    private :chained_require
  end
end





# Initialize the rails application
Bbb::Application.initialize!
