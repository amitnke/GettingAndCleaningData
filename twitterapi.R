library(httr)
myapp = oauth_app("twitter", key="bXAuaxfOlGIeJKJ5YorqfLwGK", secret="06YNzSO0w7WEWJtp98Vd6MD0Jwis4cAtgQr7J5byPUfaDyBs9x")
sig = sign_oauth1.0(myapp, token="115878452-OTDFk4MajdCM5jVOHPObHWvVQn0Il8rOKTRCttFS", token_secret = "MNnFgNRXhREAw48qVlcMfSCERC5Odn6IuWynbbFS3w9Jk")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
json1 = content(homeTL)
library(jsonlite)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1,]

oauth_endpoints("linkedin")
# 2. Register an application at https://www.linkedin.com/secure/developer
-#    Insert your values below - if secret is omitted, it will look it up in
        -#    the LINKEDIN_CONSUMER_SECRET environmental variable. Make sure to
        -#    register http://localhost:1410/ as an "OAuth 2.0 Redirect URL".
        +#    Make sure to register http://localhost:1410/ as an "OAuth 2.0 Redirect URL".
        #    (the trailing slash is important!)
myapp <- oauth_app("linkedin", key = "77pta2rrhedqsb", secret="Lb6FVbsdwmJZo9VV")

homeTL1 <- GET("https://api.linkedin.com/v1/people/~?format=json")
json3 <-  content(homeTL1)
json4 = jsonlite::fromJSON(toJSON(json3))
