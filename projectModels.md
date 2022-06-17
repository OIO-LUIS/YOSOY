Strategy and Logic for YoSoy. 

Sell, buy, bid and auction items. 

All about security (digital), safety(physical), simbiosis(tech and nature) and anonymization(more than blockchain, true untraceability)


Users
    # managed via gem devise and cancancan
    https://github.com/CanCanCommunity/cancancan
    https://rubydoc.info/github/heartcombo/devise

    #has many profiles
    #has many meetingLocations
    #has many subscriptions
    #has many products through profile
    #has many services through profile
    #has many auctions through profile

    
    #db fields
    rails generate migration add_fields_to_users score:integer reputation:integer positiveTransactions:integer negativeTransactions:integer subscriptionType:integer verified:boolean biometric:boolean identity:uuid lastScore:integer 

Profiles

    # Users can have many profiles, these allow the user to perform different actions. Profiles can be assigned for free or through a subscription depending on the needs of the user. 

    #belongs to user through subscriptions
    
    rails g model Profile name:string category:string description:string type:string subscriptionPrice:integer level:integer experience:string 

meetingLocations

    #belongs to user
    # Users can configure several locations to meet in order to receive purchased products, services, etc.
    rails g model meetingLocations name:string lat:string lng:string address:string city:string province:string 

Subcriptions 

    
    # Some profiles require a subscription, for example to buy and offer services a subscription is necessary

    rails g model Subscription name:string category:string description:string type:string subscriptionPrice:integer subscriptionPeriod:integer

Products



Services

Auctions




