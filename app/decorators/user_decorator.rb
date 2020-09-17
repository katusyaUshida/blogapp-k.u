# frozen_string_literal: true

module UserDecorator
    def display_name
        # if profile && profile.nickname
        #   profile.nickname
        # else
        #   self.email.split('@').first
        # end
    
        #&はぼっち演算子(オプショナルチェイニング) profileがnillじゃなかった場合直後を行う
        profile&.nickname || self.email.split('@').first
    
      end

      def avatar_image
        if profile&.avatar&.attached?
          profile.avatar
        else
          'default-avatar.png'
        end
      end
    
end
