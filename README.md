#SHOPPING BASKET

##Marks & Spencer Tech Assignment

##Notes on submission

 In meeting conditions of the assignment, whilst remaining within the allotted time limit, the main focus has been to test thoroughly and ensure the Basket class passes requirements laid out in extracted User Stories. Assumptions have been made and there is more work to be do to complete a final product.

###User Stories

 By reading the assignment, User Stories have been extracted using the Stakeholder/Motivation/Action format. These form the backbone of the apps test driven development.

###Assumptions

 The assignment clearly indicates work has been broken down between a team. The written code therefore looks at the Basket class, as an assumption has been made that other classes have been passed to other team members. Inclusion of vacuous classes has been done to pass tests whilst always focusing on changeable code within the Basket class.

###Further Work

####Add method
 The assignment requires an #add method. Implementation of such a method could look something like this:

    ```
    def add(product_code)
      order.push(item(product_code))
    end
    ```

 Ensuring #add has the single responsibility of pushing an item to the order. The '#item(product_code)' would then have the single responsibility of sorting out which item belonged to the product code:

    ```
    def item(product_code)
      product_catalog.item(product_code)
    end
    ```

 This removes responsibility of matching a catalog item and product code from the Basket class. Responsibility is transferred to the ProductCatalog class instead.

####Total Method
 #total could use the previously mentioned order to pass items as an Array or Hash to some sort of calculator:

    ```
    def total(order)
      basket_calculator.calculate(order)
    end
    ```

 A new BasketCalculator class would then be required. The baskets responsibility could then be to simply collect objects and pass them to other parts of the app. The BasketCalculater class could then manage the logic required for delivery charges and offers, perhaps even passing these to separate calculators.

##User Stories

**User Story One:**
```
As a customer,
So that I know what products are avliable to put in the basket,
I'd like the basket to know what's on the product catalog.
```

**User Story Two**
```
As a retailer,
So that I know customers are being charged for correct delivery costs,
I'd like the basket to know what the delivery costs are.
```

**User Story Three**
```
As a customer,
So I get my discounts added,
I'd like the basket to know about current offers.
```
