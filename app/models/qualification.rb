class Qualification
  attr_accessor :id, :name, :subjects, :link

  def initialize(attributes={})
    @id = attributes[:id] || ""
    @name = attributes[:name] || ""
    @link = attributes[:link] || ""
    @subjects = []
  end
end
