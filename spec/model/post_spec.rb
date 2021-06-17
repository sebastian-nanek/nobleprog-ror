require 'spec_helper'

describe Post do
    let(:my_content) { <<-CONTENT
        Sed ut dolor u nde omnis iste natues.
        Error sit vluptatem.
        CONTENT
    }

    describe '#content_snapshot' do
        it 'returns the first sentence' do
            post = Post.new(content: my_content)

            expect(post.content_snapshot).to eq("Sed ut dolor u nde omnis iste natues")
        end
    end

    describe '#content_keywords' do
        let(:count) { 6 }

        it 'returns an array of _count_ words' do
            post = Post.new(content: my_content)
            
            expect(post.content_keywords(count).length).to eq(count)
        end
    end
end