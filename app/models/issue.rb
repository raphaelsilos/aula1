class Issue < ActiveRecord::Base
  belongs_to :project 
  belongs_to :opener_user , :class_name => 'User'
  belongs_to :assingnee_user , :class_name => 'User'
  belongs_to :status
end
