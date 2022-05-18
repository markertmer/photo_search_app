class ImageService

  def self.get_images(keyword)
    # url = 'https://api.flickr.com/services/rest'?api_key=0d379ef3bc21bfbbbd2b5632ec6828bd&method=flickr.photos.search&tags=football&extras=url_sq&text=football
    url = 'https://api.flickr.com/services/rest'
    conn = Faraday.new(url) do |f|
      f.params['format'] = 'json'
      f.params['nojsoncallback'] = '1'
      f.params['api_key'] = ENV['flickr_api_key']
      f.params['method'] = 'flickr.photos.search'
      f.params['per_page'] = '10'
      f.params['tags'] = keyword
      f.params['text'] = keyword
      f.params['extras'] = 'url_sq'
    end

    response = conn.get
    JSON.parse(response.body)
  end
end
