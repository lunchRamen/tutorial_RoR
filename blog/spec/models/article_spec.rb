require "rails_helper"

RSpec.describe Article, :type => :model do
    it "model new" do
        expect(Article.new(title: "title", body: "body must over 10 char",status: "public")).to be_valid
    end

    it "body too short" do
        expect(Article.new(title: "title", body: "under 10",status: "public")).not_to be_valid
    end

    it "model create" do
        expect(Article.create(title: "title", body: "body must over 10 char",status: "public")).to be_valid
    end

end
