class LineItem < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :project
end
