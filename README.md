---
title: "README"
date: "October 7, 2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


This is the repository for a simple shiny app developed for the course Developing Data Products.

The purpose of this app could be to help students of introductory finance classes to understand and visualize the effects of interest rates and different payment schedules on loans. 

The app provides a simple wrapper for accessing functions implemented in the `Financial Mathematics` R package.

In the sidebar, the user can enter: 

* A loan amount
* The number of years over which the loan will be paid back
* The yearly interest rate
* The amount of payments to be made per year
* The amount of interest compounding periods per year

The app will provide three windows of output, dynamically adjusting to the input values provided by the user and accessible via a tab selector on the top of the main window.

The first output, selected by default, is the complete amortization table for the loan. This will display, for each period:

* a sequential number for the payment 
* the payment period, in years
* the amount of the payment
* how much of the payment is interest
* how much of the payment goes to actually reduce the principal amount of the loan
* the outstanding balance of the loan remaining after the payment

![table1](Loan_Amort_pres-figure/table1.png)

The second tab presents a plot showing the percentage of payments going toward covering interest, as the loan matures.

![plot](Loan_Amort_pres-figure/interest_plot.png)



The third tab presents a summary table showing the original loan amount, the total amount repaid, the amount paid in interest and the effective annual interest rate (EAR) on the loan.

![table2](Loan_Amort_pres-figure/table2.png)

