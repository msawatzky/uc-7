# Holds actions for finder
class FinderController < ApplicationController
  def index
    @customers = Customer.all.left_outer_joins(:province)
  end

  def alphabetized
    @customers = Customer.all.left_outer_joins(:province).order(:full_name)
  end

  def missing_email
    @customers = Customer.all.left_outer_joins(:province)
                         .where(email_address: '')
  end
end
