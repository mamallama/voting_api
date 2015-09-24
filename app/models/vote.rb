class Vote < ActiveRecord::Base
  belongs_to  :candidates
  belongs_to :voters
  validates :voter_id, uniqueness: true
end
