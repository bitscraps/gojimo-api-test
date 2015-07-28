class Subject
  attr_accessor :id, :title, :link, :colour, :icon

  def initialize(attributes={})
    @id = attributes[:id] || ""
    @title = attributes[:title] || ""
    @link = attributes[:link] || ""
    @colour = attributes[:colour] || ""
    @icon = attributes[:icon] || ""
  end
end
