# NativeWit
UI Development Project

This Project was developed by Vijay MN for the Interview with NativeWit.

Requirements: Mac(macOS 10.5.4 or later), Xcode Version 12.

Download the "NativeWitTask" folder under the github repo mnvijay1998/NativeWit.
Open the XCode Project file "NativeWit Task.xcodeproj" from the "NativeWitTask" folder.
Choose the Simulator as "iPhone 12 Pro Max"
From the Menu bar, Click Product -> Run.
Then the App will be loaded in the Simulator successfully.

There are three page views in this application, Login Page, Profile Page and Transactions Page.

Navigation Flow: Login Page -> Profile Page <-> Transactions Page.

Login Page gets Email Address and Password from the User and Validates it. Post Validation if the Credentials matches, then login is successful.
Login Page also lets the new user to sign up and also allows the user to retrieve account if the user forgots the password.
Profile Page lists the User photo, Income, Expense, Loan and also lists the Transactions under the Overview Header. 
Profile Page also has the Tab View which links to the next page.
Transactions Page list all or Income or Expense Transactions. The user can search for Transactions.
The Transactions are listed under the Today's View. It also has the see details button which links to the Profile Page.

