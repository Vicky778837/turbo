class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many  :likeables,dependent: :destroy
         has_many  :liked_tweets,through: :likeables, source: :tweet
           

       def liked?(tweet)
        liked_tweets.include?(tweet)
         
       end



         def like(tweet)
          if liked_tweets.include?(tweet)
            liked_tweets.destroy(tweet)
            else
            liked << tweet  
         end
       end
end
