require 'rails'
require 'ember/auth/request/jquery/source'
require 'ember/auth/request/jquery/rails/version'
require 'ember/auth/request/jquery/rails/engine'

module Ember
  module Auth
    module Request
      module Jquery
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.request.jquery.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Request::Jquery::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
