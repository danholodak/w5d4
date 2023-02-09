class ShortenedUrl < ApplicationRecord

    validates :shortened_url, :received_url, presence: true
    validates :shortened_url, uniqueness: true

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User


end