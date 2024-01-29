class ApplicationController < ActionController::Base
    include SessionsHelper

    after_action :log_headers

    private

    def log_headers
        Rails.logger.debug "Response headers: #{response.headers.inspect}"
    end
end
