# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    validates :email, presence: true, uniqueness: true

    has_many :shortened_urls,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :ShortenedUrl

end
