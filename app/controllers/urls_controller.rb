get '/' do
    #let user create a new short URL < display a list of shrt URLS>
  erb :"static/index"
end


get '/tour' do

erb :"static/tour"

end

get '/enterprise' do

erb :"static/enterprise"

end

get '/about' do

erb :"static/about"

end


get '/' do

erb :"static/enterprise"

end





get '/:short_url' do
    a = Url.find_by(short_url:params[:short_url])
    if a != nil #if i type if a, means if a.present?
        a.counter += 1
        a.save
        redirect a.ori_url
    else
        erb :"static/typo"
    end
end



post '/urls' do
    url1 = Url.new(ori_url: params["ori_url"])
    url1.short_url = (('a'..'z').to_a + ('0'..'9').to_a).sample(8).join
    if url1.save == true
        url1.to_json
       # redirect '/'
    else
        # @message = url1.errors.full_messages.join(" ,")
        url1.errors.full_messages.join(",").to_json ### send the signal to the static/result
    end

    # erb :"static/index"
end





    #redirect to appropriate "long" url
    # original url has to be the valid one;
    #thats why you need the validation;
    #have the to do list

    #point of clarification?
    #when the user use the abc.hi/4x52f67c,
    #that means this link comes back as
    #localhost9393:/:abc.hi/4x52f67c
    #how does the computer knows

    #then how do I know this will take to the original?
    #the form would be localhost9393:"original link"
    #then that means that I need to chop it off the first part? or localhost9393