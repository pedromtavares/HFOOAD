class GuitarSpec
  attr_reader :builder, :model, :type, :num_strings, :back_wood, :top_wood
  
  def initialize(builder, model, type, num_strings, back_wood, top_wood)
    @builder = builder
    @model = model
    @type = type
    @num_strings = num_strings
    @back_wood = back_wood
    @top_wood = top_wood
  end

  def matches(search)
    @builder==search.builder && @model.downcase==search.model.downcase && @type==search.type && @num_strings==search.num_strings && @back_wood==search.back_wood && @top_wood==search.top_wood
  end
end
