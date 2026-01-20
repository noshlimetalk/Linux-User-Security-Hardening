# Linux User Lifecycle & Security policy automation
 # Project overview

 This project is bash administration tool designed to automate **user onboarding, security hardeining, and offboarding** on Ubuntu Linux Systems. It simulates how organizations securely manage accounts while enforcing password and acess policies

 ## Security Policies Implemented

 ### Password Requirements

 -Minimum password length: **12 characters**
 -Complexity enforced (uppercase,lowercase,special character,digit)
 -Password expiration **90 days**
 -Minimum time before password changes **7 days**

 # Account Protection

 -Lock account after **3 failed login attempts**
 -Automatic unlock after **15 minutes**
 -PAM based authentication controls

 ## Auditing
 - All onboarding and offboarding actions logged to:
