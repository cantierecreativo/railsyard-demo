require 'railsyard-authentication-devise'

Railsyard::Backend.authentication_adapter = Railsyard::Backend::Authentication::Devise
Railsyard::Backend.authenticator_initializer = lambda { |authenticator| authenticator.scope = :user }
