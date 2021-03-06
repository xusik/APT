class Job < ActiveRecord::Base
  has_and_belongs_to_many :handlers,
    :class_name => "User",
    :join_table => "jobs_handlers"
  
  belongs_to :forum
  belongs_to :author,
    :class_name => "User",
    :foreign_key => "author_id"
end
