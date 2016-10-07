require 'test_helper'

class PostSerializerTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: 'Hello World!',
                     excerpt: 'Short Content',
                     content: 'Long Content')
  end

  def test_fields_serializable_resource_usage
    resource = ActiveModelSerializers::SerializableResource.new(
      @post, serializer: PostSerializer,
             adapter: :json,
             fields: fields,
             debug: true
    )

    assert_equal sample_output, resource.serializable_hash
  end

  def test_fields_adapter_usage
    post_serializer = PostSerializer.new(@post, debug: true)
    adapter = ActiveModelSerializers::Adapter::Json.new(post_serializer)
    hash = adapter.serializable_hash(fields: fields)

    assert_equal sample_output, hash
  end

  private

  def sample_output
    { post: @post.attributes.symbolize_keys.slice(:id, :title, :excerpt)
                 .merge(debug: true) }
  end

  def fields
    %i(id title excerpt debug)
  end
end
