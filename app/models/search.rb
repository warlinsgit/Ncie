class Search < ApplicationRecord

		def search_laptops

		laptops = Laptop.all



  		laptops = laptops.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
  		laptops = laptops.where(["brand LIKE ?", brand]) if brand.present?
  		laptops = laptops.where(["title LIKE ?", title]) if title.present?
  		laptops = laptops.where(["price >= ?", min_price]) if min_price.present?
  		laptops = laptops.where(["price <= ?", max_price]) if max_price.present?
   		laptops = laptops.where(["condition LIKE ?", condition]) if condition.present?
    	laptops = laptops.where(["finish LIKE ?", finish]) if finish.present?

    	return laptops
  
end

end
