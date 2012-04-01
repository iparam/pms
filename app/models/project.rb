class Project < ActiveRecord::Base
  has_many :milestones,:dependent=>:destroy
  has_many :user_projects
  has_many :users,:through=>:user_projects
  belongs_to :manager,:foreign_key=>"manager_id",:class_name=>"User"
end
