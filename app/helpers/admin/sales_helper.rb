module Admin::SalesHelper
  def active_sale?
    Sale.active.any?
  end

  def which_sale
    Sale.active
  end
end
