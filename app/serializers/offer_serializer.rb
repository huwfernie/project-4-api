class OfferSerializer < ActiveModel::Serializer

  has_many :messages
  belongs_to :user
  attributes :id, :title, :html_body, :body, :user_id, :value, :image_src

  PARSER = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

  def image_src
    object.image.url
  end

  def html_body
    PARSER.render(object.body)
  end
end
