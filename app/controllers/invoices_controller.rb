class InvoicesController < ApplicationController
  def index
    @invoices = current_user.invoices

  end

  def show

  end

end
