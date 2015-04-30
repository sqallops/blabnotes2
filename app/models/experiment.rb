class Experiment < ActiveRecord::Base
	
	belongs_to :project
	
	validates :title, :procedure, :image_url, presence: true
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG, or PNG image.'
	}
	
	scope :date_started, lambda{|date_started| where('date_started = ?', date_started)}
	scope :project_id, lambda{|project_id| where('project_id = ?', project_id)}
	scope :updated_at, lambda{|updated_at| where('updated_at = ?', updated_at)}
	
	

	

end
