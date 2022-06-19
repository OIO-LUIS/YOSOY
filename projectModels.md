Strategy and Logic for YoSoy. 

Sell, buy, bid and auction items. 

All about security (digital), safety(physical), simbiosis(tech and nature) and anonymization(more than blockchain, true untraceability)


Users
    # managed via gem devise and cancancan
    https://github.com/CanCanCommunity/cancancan
    https://rubydoc.info/github/heartcombo/devise

    #has one atma
    #has one persona
    #has one Wrd_PwR
    #has many profiles
    #has many meetingLocations
    #has one subscription
    #has many products through profile
    #has many services through profile
    #has many auctions through profile

    
    #db fields
    rails generate migration add_fields_to_users score:integer reputation:integer positiveTransactions:integer negativeTransactions:integer subscriptionType:integer verified:boolean biometric:boolean identity:uuid lastScore:integer 

Atma

    #belongs to user
    A metric system which reads usage, interaction with site and other users,
    number of transactions, community service, “projects” created,
    “projects” consulted, “truthful_duty”, etc.
    *ATMA is an analytical self sufficient score completely managed by the system,
    everyone starts at the same level. 
    For example, the projects that the user may create will have data regarding 
    complexityLevel, costEffectiveScore, overallScor among other things. 
    Users with certain ATMA score will receive bonifications.

    rails g model atma score:integer level:integer antiquity:integer activityScore:integer communityServiceScore:integer sucessfulProjects:integer reactivityScore:integer isArtist:boolean isCreator:boolean ...(TBD)

Persona

    #belongs to user
    The user will have a series of questions asked during the sign up process.
    The questions are there to reflect what user_type. This can be changed by the user or by the system depending on behaviour (for example if user wants to sale items but gives damaged items then the system depending on some paramaters will remove the ability) 
    System changed persona mods can only be lifted by paying penalty which is used
    for comunity projects. Other measures may be that the user may have to deposit
    an amount in order to sale which can then be given back once the transaction is
    succesful.
    *Persona is some sort of priviledge system which will grant or revoke abilities
    to interact with the system. 

    rails g model persona sellItems:boolean purchaseItems:boolean createProjects:boolean participateProjects:boolean createAuctions:boolean bidAuctions:boolean provideService:boolean bookService:boolean monitoredTransactions:integer isModerator:boolean resolvedDisputes:integer validateDisputes:boolean qualifiedBonus:integer


Wrd_PwR

    #belongs to user
    WrD_PwR is thesocial part of the system. WrD_PwR, which stands for word power. 
    Its value determines artistical contributions to the community. 
    The system’s values are that which expresses inspiration. Word Power allows users 
    to have access to be creators in the Entertainment service. Its purpose is to inspire to 
    inspire through art. Entertainment creators have many ways of receiving revenue

    rails g model Wrd_PwR score:integer level:integer type:string revenue:integer lastMonthRevenue:integer

Profiles

    # Users can have many profiles, these allow the user to perform different actions. Profiles can be assigned for free or through a subscription depending on the needs of the user. 

    #belongs to user through subscriptions
    
    rails g model Profile name:string category:string description:string type:string subscriptionPrice:integer level:integer experience:string 

meetingLocations

    #belongs to user
    # Users can configure several locations to meet in order to receive purchased products, services, etc.
    rails g model meetingLocations name:string lat:string lng:string locationRadius:integer address:string city:string province:string 

Subcription


    # TBD

Products

    #  Products are items in the marketplace sold at a fixed price
    rails g model Products name:string category:string description:string type:string tax:integer price:integer stock:integer tags:string image:string dimensions:string weight:string reviews:string score:string

Services

    #belongs to Users
    # Users may book and offer services
    rails g model Services name:string category:string description:string type:string reviews:string score:string image:string 

Auctions

    #belongs to Users
    # Auction house for products.
    rails g model Auctions name:string category:string description:string type:string dimensions:string weight:string image:string condition:string quantity:string manufacturerCountry:string initialBid:integer currentBid:integer soldBid:integer


Proyects

    #relationships TBD
    #a proyect is initiated by one user but the project will have many dependencies that need to be configured at the moment of creation. 

    #a project can be anything, a shared goal to reach an specific result.
    rails g model Projects name:string category:string description:string type:string intitialCost:integer totalCost:integer numberMembers:integer memberComplexityLevel:integer locationCity:string locationAddress:string locationLAT:string locationLNG:string locationRadius:integer communityBenefit:boolean communityServiceScore:integer targetGroup:string ageGroup:string isArtist:boolean nonProfit:boolean tags:string socialContribution:integer complexityLevel:integer costEffectiveScore:integer overallScore:integer 

