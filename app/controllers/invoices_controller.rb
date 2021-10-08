class InvoicesController < ApplicationController
  def index
    @invoices_as_customers = policy_scope(current_user.invoices)
  end

  def show

  end

end
