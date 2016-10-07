class ApplicationSerializer < ActiveModel::Serializer
  attribute :debug, if: -> { instance_options[:debug] }

  def debug
    true
  end
end
