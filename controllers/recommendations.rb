class RecommendationsController < ApplicationController

get '/' do
  @recs = ClassRecs.all
  erb :index
end

get '/api' do
# ClassRecs.all.to_json
# ClassRecs.find_by(id: '1').to_json
ClassRecs.where(contributor: 'James T').to_json
end

end
