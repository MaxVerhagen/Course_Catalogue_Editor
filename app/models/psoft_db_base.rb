class PsoftDbBase < ApplicationRecord
    self.abstract_class = true
    establish_connection PSOFT_DB
end
