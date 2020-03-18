Stripe.plan :silver do |plan|
  plan.name = 'ACME Silver'
  plan.amount = 699 # $6.99
  plan.interval = 'month'
end

Stripe.plan :gold do |plan|
  plan.name = 'ACME Gold'
  plan.amount = 999 # $9.99
  plan.interval = 'month'
end

Stripe.plan :bronze do |plan|
  # Use an existing product id to prevent a new plan from
  # getting created
  plan.product_id = 'prod_XXXXXXXXXXXXXX'
  plan.amount = 999 # $9.99
  plan.interval = 'month'
end


# This file contains descriptions of all your stripe plans

# Example
# Stripe::Plans::PRIMO #=> 'primo'

# Stripe.plan :primo do |plan|
#   # plan name as it will appear on credit card statements
#   plan.name = 'Acme as a service PRIMO'
#
#   # amount in cents. This is 6.99
#   plan.amount = 699
#
#   # currency to use for the plan (default 'usd')
#   plan.currency = 'usd'
#
#   # interval must be either 'day', 'week', 'month' or 'year'
#   plan.interval = 'month'
#
#   # only bill once every three months (default 1)
#   plan.interval_count = 3
#
#   # number of days before charging customer's card (default 0)
#   plan.trial_period_days = 30
# end

# Once you have your plans defined, you can run
#
#   rake stripe:prepare
#
# This will export any new plans to stripe.com so that you can
# begin using them in your API calls.
