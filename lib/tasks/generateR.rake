# $ bundle exec rake db:reset ??
# $ bundle exec rake db:crunch_ratings
# $ bundle exec rake test:prepare  ??

namespace :db do
  desc "Take data in Feedback and aggregate into User"
  task crunch_ratings: :environment do
    make_ratings

  end
end

def make_ratings
  # all_feedback = Feedback.all 
  # all_feedback.each do |vote|
  # 	user = User.find(id: vote.to_id)
  # 	user.ratings[vote.attribute_id]

   null_array = Array.new(Attribute.count){ 0 } 
   null_hash = Hash.new
   i=1
    while i<=Attribute.count
	   null_hash[i]=0
	   i = i+1
	end
	
   all_feedback = Feedback.all.dup 
  # all_feedback.find(56).to_id  # just for debug 

   all_feedback.each do |vote| 
    # null_array = Array.new(Attribute.count){ 0 } 
     @user = User.find(vote.to_id) 
    #@user.name  # remove - for debug 

     if @user.ratings.class == Hash 
      "@user.ratings" 
      #print "user.ratings was a hash"
     else 
       @user.ratings = null_hash
       #print "user.ratings got null_hash" 
     end   

    # @user.save! 
    # @user.ratings 
     which_attribute = vote.attribute_id 

    # temp_array = null_array 
     #null_array 
     temp_hash = @user.ratings.dup # problem - it's always 0's 
     new_rating = temp_hash[which_attribute].to_f   
     new_rating =new_rating + 1

     print "new_rating: " 
     print new_rating
     print "temp_hash: " 
     print temp_hash

     temp_hash[which_attribute] = new_rating 
     #print " temp_hash after get: " 
     #print temp_hash

     @user.ratings=temp_hash.dup 
    # @user.update(:ratings, temp_array) 
    # @user.ratings[vote.attribute_id] = 17  # maybe I can't do it by modifying user 
    #= @user.ratings[3]  
     if @user.save!   # user.save! and look for errors 
      print "saved " 
     else 
      print "didn't save" 
     end      
    # User.find(vote.to_id).ratings[vote.attribute_id]+=1 
   end   	



end

