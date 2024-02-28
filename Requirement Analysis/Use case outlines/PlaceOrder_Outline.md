# Outline for all use cases to place an order

## "Place Order" Use Case

- Use case ID: UC001
- Name of use case: Place Order
- Actor: Customer
- Brief Description: This use case describes the interaction between a customer and AIMS software when the customer wants to place an order.
- Pre-condition: The customer has products in the cart.
- Post-condition: None

### Basic flow:

1. Customer reviews cart

2. AIMS displays cart

3. AIMS checks if the inventory quantity of any product is insufficient

4. Customer requests order

5. AIMS displays delivery information form

6. Customer enters and confirms the delivery information

7. AIMS calculates delivery fee, total product price including delivery fee.

8. Customer confirms the order

9. AIMS calls UC002 "Pay Order"

10. AIMS displays the order information

11. AIMS sends all order and transaction information to the customer's email

12. AIMS notifies successful order message

### Alternative flow:

4a. AIMS shows notification of insufficient quantity of product in stock and requests customer to update the cart

4b. Customer updates cart

6a. Customer selects rush order delivery option

6b. AIMS checks the products for rush order delivery

6c. AIMS inserts UC003 "Rush Order" if any product supports rush order delivery

7a. AIMS requests customer to re-enter and update the transaction information

## "Pay Order" Use Case

- Use case ID: UC002
- Name of use case: Pay Order
- Actor: Customer
- Brief Description: This use case describes the interaction between the customer and AIMS software when the customer wants to make a payment
- Pre-condition: AIMS has calculated the total price that customer needs to pay
- Post-condition: None

### Basic flow:

1. AIMS displays the payment screen

2. Customer select a payment method

3. Customer enters card information and confirms transaction

4. AIMS validates the payment information

5. AIMS records the transaction information

### Alternative flow:

3a. Customer cancels the payment at any time

5a. AIMS notifies the invalid information field or insufficient payment value

5b. Customers updates the information

## "Rush Order" Use Case

- Use case ID: UC003
- Name of use case: Rush Order
- Actor: Customer
- Brief Description: This use case describes the interaction between the customer and AIMS software when the customer wants to select rush order delivery.
- Pre-condition: Customer selects rush order option.
- Post-condition: None

### Basic flow:

1. AIMS displays the rush order delivery screen with a list of products that rush order delivery supports

2. Customer updates rush order information and chooses products

3. AIMS calculates shipping fees

### Alternative flow:

1a. Customer cancels the option at any time

3a. AIMS notifies the unsupported delivery message for invalid delivery address

3b. AIMS requests customer to update if there are any required fields left blank or invalid information.
