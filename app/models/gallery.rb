class Gallery
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name,       :type => String
  field :unlock_key, :type => String
  field :images,     :type => Array
end
