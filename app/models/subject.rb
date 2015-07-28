class Subject
  attr_accessor :id, :title, :link, :colour

  def initialize(attributes={})
    @id = attributes[:id] || ""
    @title = attributes[:title] || ""
    @link = attributes[:link] || ""
    @colour = attributes[:colour] || ""
  end
end
