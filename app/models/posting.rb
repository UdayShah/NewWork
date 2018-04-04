class Posting < ApplicationRecord
	validates :positions, :numericality => {:only_integer => true}

end
