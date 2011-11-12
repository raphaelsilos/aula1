class Project < ActiveRecord::Base
  
  scope :ativos , where(:active => true)
end
