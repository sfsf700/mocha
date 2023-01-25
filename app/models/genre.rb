class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'Java' },
    { id: 3, name: 'Minecraft' },
  ]

  include ActiveHash::Associations
  has_many :blogs

end