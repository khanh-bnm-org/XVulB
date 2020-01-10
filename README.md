# XVulB
## !!! Warning: Vulnerable application !!!
This application deliberately contains vulnerabilities for training and demonstration purposes.

DO NOT RUN THIS ON A PUBLICLY REACHABLE SERVER UNLESS YOU KNOW WHAT YOU ARE DOING!
## Install

`docker-compose build`

## Usage
Start the application

`docker-compose up`

Access the application via: http://localhost:8080

Test accounts:

Id	| Username |	Password
--- |  --- | ---
1	| admin |	admin123
2	|spiderman|	world
3	|batman|	billionaire
4	|blackwidow|	black
5	|hulk|	green

## Known vulnerabilities

* Session fixation
* CSRF everywhere
* Reflected XSS in search function
* Stored XSS in comments of a post
* SQL Injection at post-id
* Login function is vulnerable to Brute Force attack
* Password stored in clear text
* Insecure storage of session cookie

## Environment Variables for Security

* `SECURITY_PW_STORAGE`: Clear

```
# 4 main types to store password in db
# Clear: Clear text
# Hashed: use SHA256
# SaltHashed: use SHA256 with Salt string
# PBKDF2
```

* `SECURITY_XSS_PROTECTION`: 'False'

```
# Turn XSS Prevention on or off
# False = no protection
# True = protection

```

* `SECURITY_PWBRUTEFORCE`: 'False'

```
# Turn Password Bruteforce on or off
# False = no protection, Password Bruteforce is exploitable
# Captcha = protection, using Google Recaptcha to prevent Pw_bruteforce
```

* `SECURITY_SS_FIXATION`: 'False'

```
# Turn Session Fixation on or off
# False = no protection, Session Fixation is exploitable
# True = protection, Session Fixation not exploitable
```

* `SECURITY_SQL_INJECTION`: 'False'

```
# Turn SQLi on or off
# False = no protection, SQLi is exploitable
# True = protection, SQLi not exploitable
```

* `SECURITY_SET_COOKIE`: 'False'

```
# Turn Set Secure Cookie on or off
# False = no protection
# True = protection
```
