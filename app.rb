require 'bundler'
Bundler.require()

ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:database => 'chicago_recs'
)

get '/' do
  @recs = ClassRecs.all
  erb :index
end

get '/api' do
# ClassRecs.all.to_json
# ClassRecs.find_by(id: '1').to_json
ClassRecs.where(contributor: 'James T').to_json
end
