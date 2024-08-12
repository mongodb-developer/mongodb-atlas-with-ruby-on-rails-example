class Idea
 include Mongoid::Document
 include Mongoid::Timestamps
 field :name, type: String
 field :description, type: String
 field :picture, type: String
 
def self.search(query)
    aggregation_pipeline = [
      {
        "$search": {
          "index": "inspiration",
          "text": {
            "query": query,
            "path": ['name', 'description']
          },
          sort: {score: {"$meta": "searchScore"}}
        }
      },
      {
        "$limit": 20
      }
    ]
   results = collection.aggregate(aggregation_pipeline)

   search_results = results.to_a
   search_results.map do |result|
     Idea.new(
       id: result["_id"],
       name: result["name"],
       description: result["description"],
       picture: result["picture"]
     )
   end
 end
end
