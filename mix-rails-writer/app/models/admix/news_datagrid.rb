class Admix::NewsDatagrid

  include Datagrid


  scope do
    News.order('id DESC')
  end

  filter :date do |value|
    value.to_s(:created_at)
  end

  column :title, header: I18n.t('posts.title')
  column :date, header: I18n.t('posts.date') do |post|
    post.date.strftime("%d/%m/%Y") #post.date.to_s(:created_at)
  end

  column :image, header: I18n.t('posts.image'), html: true do |post|
    if post.image?
      image_tag post.image.url(:small_thumb)
    else
      "--"
    end
  end

  column :status, header: I18n.t('posts.status') do |post|
    post.status.text
  end
  

  include Admix::TableActions

end