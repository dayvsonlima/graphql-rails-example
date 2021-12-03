module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # Then provide an implementation:
    def post(id:)
      Post.find(id)
    end

    # First describe the field signature:
    field :post, PostType, "Find a post by ID" do
      argument :id, ID
    end
  end
end
