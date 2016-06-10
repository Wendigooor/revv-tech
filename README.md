Revv Tech
================

This repository contains the minimum challenge requirements and my bonus additions for the Revv Technical Challenge. The word product and donate are used synonymously to replicate www.revv.co

Requirements and Additions (Bonus)
----------------------------------
- Add, edit and delete products from the store
- View all the products that are currently being sold on the store
- View details about a specific product, and purchase that product
- When I purchase a product from the store, the store itself (application owner) earns a 10% fee on the price of the product.
- Following my order, I am shown a thank you page that has details of my purchase.

### Bonus
- Confirmation Email with link to view charge in Stripe Dashboard.
- Ability to select from 4 different prices per product for donations
- Custom Stripe Payment form

Getting Started
---------------

Sign in + Stripe connect

	[https://damp-reaches-28734.herokuapp.com/users/sign_in](https://damp-reaches-28734.herokuapp.com/users/sign_in)

Stripe Login
	
	Email: revvseller@gmail.com
	Password: revvdonate

To view all and modify products (Must be signed in first)
	
	[https://damp-reaches-28734.herokuapp.com/products](https://damp-reaches-28734.herokuapp.com/products)

Documentation and Support
-------------------------

Example Product Fields

	Name: Donation campaign 1
	Amounts: 10 20 30 40
	Description: This is a test description for a donation campaign

Issues
-------------
Sometimes the app makes duplicate charges. This most likely happens when I connect a seller on my localhost and on the heroku app. I have not investigated enough to fully verify. Just be aware of duplicate charges.

-------
