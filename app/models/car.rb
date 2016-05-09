class Car < ActiveRecord::Base

	belongs_to :seller
	has_one :car
	has_one :order
	has_many :test_rides

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
