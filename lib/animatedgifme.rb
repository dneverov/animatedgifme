require "animatedgifme/version"
require "httparty"

module Animatedgifme
  class Error < StandardError; end

  include HTTParty
  base_uri "animatedgif.me"

  def self.find(id)
    get_retrieve_url "/gifs/#{id}.json"
  end

  def self.tagged(tag)
    get_retrieve_url "/#{tag}.json"
  end

  def self.random(tag)
    tagged(tag)
  end

  private

    def self.retrieve_url(page_data)
      responses = JSON.parse(page_data.parsed_response, symbolize_names: true)[:image_data]
      response_uri JSON[responses]["id"] if responses
    end

    def self.response_uri(gif_id)
      [self.base_uri, 'uploads', gif_id].join('/') if gif_id
    end

    def self.get_retrieve_url(query)
      retrieve_url get(query, format: :plain)
    end
end
