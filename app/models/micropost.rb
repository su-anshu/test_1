class Micropost < ApplicationRecord
    def micropost_params
        params.require(:micropost).permit(:content, :user_id)
    end
    belongs_to :user
    validates :content, :length => { :maximum => 140 }
end
