class Attachment < ApplicationRecord
  belongs_to :project
  has_one_attached :attachment_file
end

