class ImageFacade

  def self.get_images(keyword)
    data = ImageService.get_images(keyword)

    data["photos"]["photo"].map do |photo|
      photo["url_sq"]
    end
  end
end
