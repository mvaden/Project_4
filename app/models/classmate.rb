class Classmate < ActiveRecord::Base
   validates :first_name, presence: true,
                    length: { minimum: 5 }
end
