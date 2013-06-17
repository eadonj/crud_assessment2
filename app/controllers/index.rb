get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  erb :create_new
end

post '/notes/create' do
  Note.create(params[:note])
  redirect '/'
end

get '/notes/update/:id' do
	@note = Note.find(params[:id])
  erb :update_note
end

post '/notes/updated/:id' do
	note = Note.find(params[:id])
  note.update_attributes(params[:note])
  redirect '/'
end

get '/notes/delete/:id' do
  Note.destroy(params[:id])
  redirect '/'
end