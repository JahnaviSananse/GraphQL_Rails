module Types
  class QueryType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #                            description: 'An example field added by the generator'
    # def test_field
    #   'Hello World!!!!!!'
    # end

    # /author
    field :authors, [Types::AuthorType], null: true
    def authors
      Author.all
    end

    # /author/:id
    field :author, Types::AuthorType, null: false do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end
  end
end
