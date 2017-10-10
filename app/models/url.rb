require 'uri'

class Url < ActiveRecord::Base
     validates :ori_url, format: { with: URI.regexp }
     # validates :ori_url, presence: true
	# This is Sinatra! Remember to create a migration!
  # want to disconnect Post & set url


   # def shorten
        # Url.all.each do |u|
        # p u.short_url
        # #when it is used in the browser,
        # if u.short_url != p u.short_url
        # u.short_url = u.ori_url
        # end
   #  end
end



