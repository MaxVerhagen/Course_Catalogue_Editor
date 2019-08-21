# base class for the PeopleSoft database
# so we share the one database connection
# and treat it as a readonly database
class PsoftDbBase < ActiveRecord::Base
  self.abstract_class = true
  establish_connection PSOFT_DB
  def readonly?
     true
  end
end