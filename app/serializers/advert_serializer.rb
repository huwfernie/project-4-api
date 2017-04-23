class AdvertSerializer < ActiveModel::Serializer
  has_many :messages
  attributes :id, :title, :body, :user_id, :valueMax, :valueMin, :html_body

  PARSER = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

  def html_body
    PARSER.render(object.body)
  end
end
