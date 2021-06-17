class User < ApplicationRecord
    def name_with_email
        "#{name} (#{email})"
    end
end
