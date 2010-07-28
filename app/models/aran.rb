class Aran < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 12
end
