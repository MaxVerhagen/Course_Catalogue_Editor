class Ownership < ApplicationRecord
  belongs_to :offering
  belongs_to :organisation
end
