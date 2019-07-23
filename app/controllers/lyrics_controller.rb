# frozen_string_literal: true

class LyricsController < ActionController::Base
  include ActionController::Live

  def show
    response.headers['Content-Type'] = 'text/event-stream'
    100.times do
      response.stream.write "hello world\n"
      sleep 1
    end
  ensure
    response.stream.close
  end
end
