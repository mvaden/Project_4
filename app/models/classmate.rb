class Classmate < ActiveRecord::Base
   has_many :comments
   validates :first_name, presence: true,
                    length: { minimum: 3 }
   validates :last_name, presence: true,
                    length: { minimum: 3 }
end
