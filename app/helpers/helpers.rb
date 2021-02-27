require 'pry'
class Helpers
    def self.current_user(sess)
        User.find_by(id: sess[:user_id])
    end

    def self.is_logged_in?(sess)
        !!sess[:user_id]
    end
end