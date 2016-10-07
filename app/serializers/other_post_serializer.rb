class OtherPostSerializer < PostSerializer
  def title
    object.title.upcase
  end
end
