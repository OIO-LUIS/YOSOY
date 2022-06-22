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
    rails generate migration add_fields_to_users score:integer reputation:integer positive_transactions:integer negative_transactions:integer subscription_type:integer verified:boolean biometric:boolean identity:uuid last_score:integer current_score:integer phone_number:string OTP:string

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

    rails g model atma score:integer level:integer antiquity:integer activity_score:integer community_serviceScore:integer sucessful_projects:integer reactivity_score:integer is_artist:boolean is_creator:boolean ...(TBD)

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

    rails g model persona sell_items:boolean purchase_items:boolean createProjects:boolean participate_projects:boolean create_auctions:boolean bid_auctions:boolean provide_service:boolean book_service:boolean monitored_transactions:integer is_moderator:boolean resolved_disputes:integer validate_disputes:boolean qualified_bonus:integer


Wrd_PwR

    #belongs to user
    WrD_PwR is the social part of the system. WrD_PwR, which stands for word power. 
    Its value determines how reliable a user is. For example, if a user creates a Project, (means that a project was initiated with possible open positions for other users to join) and the creator leaves the project, Wrd_PwR will be reduced, on the contrary if the project is complete a bonus is added to the Wrd_PwR value. Selling good quality items or services also provide better Wrd_PwR. This will be the most important piece of data to maintain unique users. Brainstorm required to find other ways to prevent users from cheating the system by creating other accounts when bad Wrd_PwR is adquired. Methods cannot include real personal data but may include OAUTH from cellphone number OTP && user referals (initial users TBD) 

    rails g model Wrd_PwR score:integer level:integer type:string num_reports:integer cellphone_num:string referral:string sucessful_projects:integer sucessful_services:integer sucessful_sales:integer community_service_score:integer

Profiles

    # Users can have many profiles, these allow the user to perform different actions. Profiles can be assigned for free or through a subscription depending on the needs of the user. 

    #belongs to user through subscriptions
    
    rails g model Profile name:string category:string description:string type:string subscription_price:integer level:integer experience:string 

meetingLocations

    #belongs to user
    # Users can configure several locations to meet in order to receive purchased products, services, etc.
    rails g scaffold meeting_locations name:string lat:string lng:string locationRadius:integer address:string city:string province:string 

Subcription

    #TBD
    rails g model Subcription name:string total_price:integer tax:integer add_donation:integer

Products

    #  Products are items in the marketplace sold at a fixed price
    rails g scaffold Products name:string category:string description:string type:string tax:integer price:integer stock:integer tags:string image:string dimensions:string weight:string reviews:string score:string comments:string 

Services

    #belongs to Users
    # Users may book and offer services
    rails g model Services name:string category:string description:string type:string reviews:string score:string image:string comments:string

Auctions

    #belongs to Users
    # Auction house for products.
    rails g scaffold Auctions name:string category:string description:string type:string dimensions:string weight:string image:string condition:string quantity:integer manufacturer_country:string initial_bid:integer current_bid:integer sold_bid:integer comments:string


Proyects

    #relationships TBD
    #a proyect is initiated by one user but the project will have many dependencies that need to be configured at the moment of creation. 

    #a project can be anything, a shared goal to reach an specific result.
    rails g scaffold Projects name:string category:string description:string type:string intitial_cost:integer total_cost:integer number_members:integer member_complexityLevel:integer location_city:string location_address:string location_lat:string location_lng:string location_radius:integer community_benefit:boolean community_serviceScore:integer target_group:string age_group:string is_artist:boolean non_profit:boolean tags:string social_contribution:integer complexity_level:integer costEffective_score:integer overall_score:integer comments:string

