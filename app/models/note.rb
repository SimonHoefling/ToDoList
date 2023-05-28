class Note < ApplicationRecord
  # This is a class model where all the methods are stored for the notes.
  # The methods are called in the controller to perform the actions.
  validates :name, presence: true
  validates :description, presence: true
end
