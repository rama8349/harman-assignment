

	# # stripe:
	# #   development:
	# #     PUBLISHABLE_KEY: 'pk_test_bdy9udztxZGdCPUYeMX6nrz1004OGkZgjU'
	# #     SECRET_KEY: 'sk_test_aYaoJEgGoHQ7zg3BqwHytxhF008qpb5fTN'

	Rails.configuration.stripe = {
	:publishable_key => ENV['PUBLISHABLE_KEY'],
	:secret_key => ENV['SECRET_KEY']
	}

 Stripe.api_key = Rails.configuration.stripe[:secret_key]

	# # Rails.application.configure do
	# #   config.stripe.secret_key = ENV["STRIPE_SECRET_KEY"]
	# #   config.stripe.publishable_key = ENV["STRIPE_PUBLISHABLE_KEY"]
	# # end


	# Rails.configuration.stripe = {
	#   publishable_key: Rails.application.credentials.ENV["STRIPE_SECRET_KEY"]#Rails.application.secrets['stripe']['publishable_key'],
	#   secret_key:  	Rails.application.credentials.ENV["STRIPE_PUBLISHABLE_KEY"]#Rails.application.secrets['stripe']['secret_key']
	# }
	 
	# Stripe.api_key = Rails.configuration.stripe[:secret_key]
	 
	# StripeEvent.configure do |events|
	#   events.subscribe 'charge.succeeded' do |event|
	#     # Here you can send notification to user,
	#     # change transaction state or whatever you want.
	#   end
	# end