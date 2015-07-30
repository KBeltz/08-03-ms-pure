# == Schema Information
#
# Table name: locations
#
#  id            :integer          not null, primary key
#  location_name :string
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  map_image     :string
#

class Location < ActiveRecord::Base
  validates :location_name, presence: true
  validates :url, presence: true
  has_many :shifts

  attr_accessor :map_image

  after_save :save_map_image, if: :map_image

  def save_map_image
    # Sets the map image name to the origninal name when uploaded
    filename = map_image.original_filename
    # Creates a new folder for the image, based on its id
    folder = "public/locations/#{id}/map_image"

    # Makes the folder, whether or not it exists already
    FileUtils::mkdir_p.folder

    # Opens the directory and file name that was uploaded, makes it writable
    f = File.open File.join(folder, filename), "wb"
    # Writes the file to the image that was uploaded
    f.write map_image.read()
    # Closes the file
    f.close

    # Sets the map_image to nil, since we're done with it
    self.map_image = nil

    # Updates the location object's filename to the origninal file name
    update map_image_filename: filename
  end

end
