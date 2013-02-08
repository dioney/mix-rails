class Video < ActiveRecord::Base
  extend FriendlyId

  attr_accessible :active, :category, :description, :dislikes, :likes, :published_at, :seconds, :title, :url, :views, :youtube_code
  
  friendly_id :title, use: :slugged

  validates :url, presence: true, youtube: true

  belongs_to :related, polymorphic: true

  after_validation :insert_youtube_data

  scope :most_recent, order('published_at DESC, title ASC')

  def insert_youtube_data
    if self.errors.blank?
      yt_code = self.extract_youtube_code

      video = Youtube::Video.find(scope: yt_code, params: {v: '2'})
      video = video.entry.first

      self.title        = video.title
      self.description  = video.group.description
      self.seconds      = video.group.duration.seconds
      self.views        = video.statistics.viewCount
      self.likes        = video.rating.last.numLikes
      self.dislikes     = video.rating.last.numDislikes
      self.published_at = video.published.to_time
      self.youtube_code = yt_code
      self.category     = video.group.category
    end
  end

  # Atualmente validando URLs nos formatos:
  # http://www.youtube.com/watch?v=9bZkp7q19f0
  # TODO adicionar formato http://youtu.be/9bZkp7q19f0
  def extract_youtube_code
    url = self.url

    url = URI(url)
    query = CGI.parse(url.query)
    query['v'].first
  end

  def iframe(params = {})
    defaults = {
      width: '100%',
      height: '400'
    }
    params = defaults.merge(params)
    "<iframe width='#{params[:width]}' height='#{params[:height]}' src='http://www.youtube-nocookie.com/embed/#{self.youtube_code}?rel=0' frameborder='0' allowfullscreen></iframe>"
  end

  def thumb(type = :p)
    thumbs = {
      # 120x90
      p: 'http://i.ytimg.com/vi/:code/default.jpg',
      # 320x180
      m: 'http://i.ytimg.com/vi/:code/mqdefault.jpg',
      # 480x360
      g: 'http://i.ytimg.com/vi/:code/hqdefault.jpg',
      # 640x480
      gg: 'http://i.ytimg.com/vi/:code/sddefault.jpg'
    }

    thumbs[type].sub(':code', self.youtube_code)
  end

end
