class Post < ApplicationRecord
    def content_snapshot
        content.split('.').first.strip
    end
end
