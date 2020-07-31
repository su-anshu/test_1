class User < ApplicationRecord
    def user_params
        params.require(:user).permit(:email, :name)
    end
    has_many :microposts
end
