class Idea
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :picture, type: String

  index({ name: 'text', description: 'text' }, { name: 'name_description_text_index' })

  def self.search(query)
    where({ "$text": { "$search": query } })
      .project(score: { "$meta": "textScore" })
      .order_by(score: :desc)
  end
end
