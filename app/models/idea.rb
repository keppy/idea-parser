class Idea
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, type: String
  field :title, type: String
  
  attr_accessible :text, :title

  validates_presence_of :text, :title

  embeds_many :topics
end
