# frozen_string_literal: true

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  # USERS = { "admin" => "admin" }

  # before_action :authenticate

  # private

  # def authenticate
  #   authenticate_or_request_with_http_digest do |username|
  #     USERS[username]
  #   end
  # end
end
