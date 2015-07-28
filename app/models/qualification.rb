class Qualification
  attr_accessor :id, :name, :subjects, :link

  def initialize(attributes={})
    @id = attributes[:id] || ""
    @name = attributes[:name] || ""
    @subjects = []
    @link = attributes[:link] || ""
  end
end
