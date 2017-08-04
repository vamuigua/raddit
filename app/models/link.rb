class Link < ApplicationRecord
	#creating relationship btwn link and user
	belongs_to :user
end
