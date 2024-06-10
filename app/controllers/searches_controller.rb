class SearchesController < ApplicationController
    def display_results
      query = params[:query]
      @results = Idea.search(query)
    end
  end