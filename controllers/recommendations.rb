class RecommendationsController < ApplicationController

get '/' do
  @recs = ClassRecs.all
  erb :index
end

get '/api' do
ClassRecs.all.to_json
# ClassRecs.find_by(id: '1').to_json
# ClassRecs.where(contributor: 'James T').to_json
end

get '/api/:id' do
  p params
return ClassRecs.find(params[:id]).to_json
end

post '/create' do
p params
@newreccos = ClassRecs.new
@newreccos.contributor = params[:contributor]
@newreccos.place = params[:place]
@newreccos.notes = params[:notes]
@newreccos.typeofplace = params[:typeofplace]
@newreccos.save
@recs = ClassRecs.all
erb :index
end

get '/create' do
  erb :create_recommendation
end

get '/read' do
  @recs = ClassRecs.all
  erb :read_recommendations
end

end
