class Topic
  include Mongoid::Document
  include Mongoid::Timestamps

  field :link, type: String
  field :info, type: String
  field :released_on, type: Date
  

  embedded_in :idea
end
