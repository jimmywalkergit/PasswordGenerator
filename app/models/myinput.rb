class Myinput < ActiveRecord::Base
	validates :input1, presence: true, length: {maximum: 50}
end
