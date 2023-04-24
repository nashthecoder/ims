class Contact < ApplicationRecord
    has_many :uploads, class_name: "upload", foreign_key: "reference_id"
    has_many :activities, class_name: "activity", foreign_key: "reference_id"
end
