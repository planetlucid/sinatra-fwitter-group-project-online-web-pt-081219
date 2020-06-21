# frozen_string_literal: true

module Slugifiable
  extend ActiveSupport::Concern

  def slug
    username.downcase.gsub(' ', '-')
  end

  class_methods do
    def find_by_slug(slug)
      all.find do |record|
        record.slug == slug
      end
    end
  end
end