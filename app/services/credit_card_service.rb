class CreditCardService
  def initialize(contributor_id, card)
    @user = Contributor.find(contributor_id)
    @card = card
  end
 
  def create_credit_card
    customer = Stripe::Customer.retrieve(@user.customer_id)
    customer.sources.create(source: generate_token).id
  end
 
  def generate_token
    Stripe::Token.create(
      card: {
        number: @card[:number],
        exp_month: @card[:month],
        exp_year: @card[:year],
        cvc: @card[:cvc]
      }
    ).id
  end
end