class Commentaire < ActiveRecord::Base
  belongs_to :article
  validates_presence_of :author
end
