==========================================================================================================================================

# Trainee program.

Needed tool-set: 
- Visual Studio Code latest version
- Visual Studio ask manager about buying it & write the HELP Desk ticket
- Node.js latest version
- Npm latest version
- Angular ng cli latest version - **https://angular.io/cli**
- Dotnet Core runtime & dotnet SDK x64 latest version with dotnet cli
- Nuget.exe tool
- powershell core latest version
- Docker
- Postmen
- Microsoft Teams
- Skype
- Git cli 
- GlobalLogic VPN 
- Stryker VPN 
- DevOps VPN form Ops team.
 
## **1 byte - 8 bit**
## **1000 (1024 just  to be so strict) byte - 1 kilo-byte**
## **1000 (1024 just to be so strict) byte - 1 kilo-byte**
## **1000024 byte - 1 mega-byte**

## Popular Open Source Github resources for learning:
**Books & Resources**
> https://github.com/EbookFoundation/free-programming-books
> https://github.com/vhf/free-programming-books-lint
> https://github.com/gothinkster/realworld
> https://github.com/public-apis/public-apis

**Javascript**
> https://github.com/getify/You-Dont-Know-JS
> https://github.com/jwasham/coding-interview-university
> https://github.com/nefe/You-Dont-Need-jQuery

**C#**
> https://referencesource.microsoft.com/ - decompiled classes from BCL.
> https://docs.microsoft.com/en-us/dotnet/csharp/
> https://dotnet.microsoft.com/learn/aspnet/microservice-tutorial/intro

**Git**
> https://guides.github.com/introduction/git-handbook/

**Funny Open API For Testing Points**
> http://www.icndb.com/api/

## Understand basic trainee's knowledge about:
> C# - .NET Core (1-5 version) / NET.Framework, OOP Data Structures (Array, List, Linked List, Tree, Dictionary (HashTable), other).
> GIT, Gitlab, CI/CD - CI particular in .git-lab.yaml file.
> Cloud infrastructure, basic knowledge within Azure/AWS/GCP.
> Microservices versus Monolithic architecture.
> Servers/ Clients-SPA applications.
> JSON/XML/Yaml formats.
> TypeScript/JavaScript.
> Postman / Newman (CLI) collection runner.
> English speaking as well writing.
> StackOverflow, MSDN etc. resources in the internet.

**Data Structure**
> Array / List
> Linked-List
> Queue (FIFO (First In First Out)) / Stack (LIFO (LAST In First Out))
> Tree (Binary Tree, AVL (Self Balanced Tree), Black-Red (Also Self Balanced) - new Set() in C# & new Dictionary()) InOrder, PostOrder, PreOrder.
> Big-O notation - O(1) O(log(n)) O(n) O(n*log(n)) O(n^2) O(n^3) O(n^m) O(n!).
> Boolean algebra (True/False Table using &&, ||, !, ^ - operators)

In boolean algebra:
V == ||  == обьединение (Union) - из теории множеств
Ʌ == &&  == пересечения (Intersect) -из теории множеств

^: 
  - 1 ^ 1 -> 0
  - 0 ^ 1 -> 1
  - 1 ^ 0 -> 1
  - 0 ^ 0 -> 0

Definition:
a ^ b === (!a && b) || (!b && a) = a ^ b

Evidence:
1 ^ 1 === (!1 && 1) || (!1 && 1) = false 
            false        false

1 ^ 0 === (!1 && 0) || (!0 && 1) = true
             false         true

0 ^ 1 === (!0 && 1) || (!1 && 0) = true
             true         false

0 ^ 0 === (!0 && 0) || (!0 && 0) = false
            false        false

a -> b === !a || b - just for information (-> operator implication (следование) from a implicate b)

&&:
  - 1 && 1 -> 1
  - 1 && 0 -> 0
  - 0 && 1 -> 0
  - 0 && 0 -> 0

||:
  - 1 || 1 -> 1
  - 1 || 0 -> 1
  - 0 || 1 -> 1
  - 0 || 0 -> 0

! (Not):
  - !1  -> 0
  - !0  -> 1

## Laziness of || , && operators.
|| operator:

Examples:
if ((true && true) || (false && false))
       first            second

if (true || (false && false))
    first        second

**Rule**: If first is true, second part even doest not execute code in brackets.
================================================================================
The same but opposite meaning with &&.

&& operator:

if ((false && false) && (false && false))
           first              second

if ((false && (false && false))
      first          second

**Rule**:  If first is false, second part even does not execute code in brackets.
================================================================================
**Object Orient Programming**
> Abstraction
> Polymorphism (A lot of forms under single interface)
> Inheritance (It C# class is able to have only one ancestor)
> Encapsulation (through modifier & hidden functionality)
> Pass Messages between classes objects.
> Object & Types

**I MUST give the angular book, Net core book, Microservice by Microsoft book.**
**Explain main functionality in the company & on Stryker Project.**

- Install Git, VS Code, Postman, Docker, PowerShell Core 7.0, npm (latest), Visual Studio (Discuss with Lead & Manager), Windows Terminal.
- Set up basic extensions in VS Code spell-checker, highlighting etc.
- Download from MY IT Support needed tools, for instance: MS - Doc, MS - Sheet.
- Environment Variables - Checks Correct path.

**I MUST explain main HTTP verbs & RFC, to show RFC documents**
**Useful RFC Links there:**
> https://tools.ietf.org/html/rfc7231  **HTTP/1.1 Whole Semantic & Content**
> https://tools.ietf.org/html/rfc6749 **OAuth 2.0 Authorization Framework (Access Token & User Token). Just get attention for Grant Types (Different Flows - Client Creds Flow, Implicit Flow, Auth Code Flow, Auth Code Flow With PKCE)**

 Client side                  Server side
|+++++++++++|                |+++++++++++|
|           |    Request     |           |
|           | -------------> |           |+-----------------------------------------------------------+
|  Client   |                |  Server   | Internally Process Request Data (Models Or something else) |
|           |    Response    |           |+-----------------------------------------------------------+
|           | <------------- |           |
|+++++++++++|                |+++++++++++|

**I MUST show our project**

- Task:
> Initiate git repository in GlobalLogic git-lab account.
> Create & Set-Up simple API Project in Visual studio (Web API), only Core 5+, NOT Framework.
> Investigate DI container in ASP.Net Core. link - **https://docs.microsoft.com/en-us/aspnet/core/fundamentals/dependency-injection?view=aspnetcore-5.0**
> Create POST end-point /api/users - should create user in system.
> Create single GET end-point user-controller class should return the hardcoded values (or return create user).
> URL-path - /api/users (/api/users/:id) - returns list of users (2 users).
  - Create User model (class) with the next fields:
    - Name string
    - Age - int
    - Email - string
    - Sex: Enum (Male, Female, Other, Undefined)
    - BodyConstitution class { Weight: double, Height: double } - (One more class)
    - List of habits (Habit class - { Name: string, PeriodOfDay - Enum (Morning, Afternoon, Evening) })
> Integrate with http://api.icndb.com/jokes/random?firstName=John&lastName=Doe API throw your Microservice
> Create one more GET end-point /api/users/:id/chuck/joke
> Make HTTP Request and fill models with chuck's joke data.
> Add **Serilog** package as logger in the applicaiton. - **https://github.com/serilog/serilog**

================================================================================

> Read some info about fluent-validators. Add C# Fluent-Validator package to project (as opposite to default ASP.Net validator), validate model with.
> Status Code and GET POST PUT PATCH DELETE Verbs as part of RESTful standard.
> Read info about status codes from this resource - **RFC: https://datatracker.ietf.org/doc/html/rfc7231**
> Dependency Injection (All configuration through LAMBDA  (() => { }) functions).
> Lazy class is good example of the differed execution of the lambda function & a delegate (I meant lazy functions).  

> Investigate what is the dependency Injection & object's lifetimes, Service Locator - so bad idea.
> Create IUserRepository with LocalUserRepository & RemoteUserRepository implementation then register them into container.
> Local: stores users in memory.
> Remote: deserializers users from User.json (place in in the Data folder inside project (DO NOT FORGET INCLUDE FILE TO BUILD PROCESS)) add .NET Newtonsoft serializer package. 
> Using config file create a local & remote mode in launch-settings.json then run project in different ways.

**I MUST supply a simple postman collection**
> Investigate what is the postman tool: postman collections, tests using (chai-js), types of postman environments.
> Create Postman collection then call GET end-point, give the users and validate correct status code (200) & validate according to schema.

**I MUST explain what is Docker & main concepts of containerization.**
> Read about containers & images | Strong understanding in distinguish between container & image.
> Read information about Docker file & basic command in this file : COPY, ADD, [CMD, RUN, ENTRYPOINT] - difference, WORKDIR, EXPOSE, ENV, FROM _name of image_.

The main purpose of the docker is to prepare the environment for ready server program.

> Main commands:
> docker build . (dot or path to Docker file) (build image)
> docker run _image's name_
> docker images - get list of images
> docker star/stop
> docker exec
> Create Docker file, copy builded project (.dlls) to container & run. Then make request from postmen to the runned container.

**Scripting using Bash or Powershell or other scripting languages.**
Basic bash commands
Basic powershell commands

**I MUST explain what is Git and how to use it in correct way.**
Git (especially GitLab remote server)
* Basic understanding of git & git commands
* HTTP/SSH connection
* `Git cheat list https://git-scm.com/docs`
* Main commands:
  * git clone link_to_rep
  * git pull
  * git fetch --prune origin
  * git branch
  * git push name_of_reps_&_remote_branch
  * git add * (or the name of file)
  * git git commit -m "message of commit"
  * git reset (--hard)
  * git reset HEAD~1 (from 1..n)
  * git merge
  * git checkout
  * git revert sha1_of_commit
  * git revert of revert (we is able to revert reverted commit by its sha1)
  * git log
* Git has three areas untracked area, stage area & commited area.
- Task:
  - Create empty Git GlobalLogic's repository.
  - Place created C# microservice in this repository.
  - Try to set up CI proccess.

**I MUST explain basic concepts of SPA applications.**
  # Angular Framework
  * Buy Udemy course - **Maximilian Schwarzmüller's Angular**
  * Basic concepts of Angular
- Task :
  - Create C# + Angular project where C# serves Angular builded static-files in dist folder
  - C# it's Web service with Rest API using JSON communication over HTTP.
  - Application should perform next tasks:
    - Has Header
    - Has Body
    - Has Footer
    - Header containts logged user profile section
    - Body has tab `Users` with  list of jokes yours microservice /api/users **end-point**.
    - Body has list `Jokes` with  jokes from this API **http://api.icndb.com/jokes/**
    - Communication flow Angular makes request to C# then C# makes Request to joke API
    - The joke **http://api.icndb.com/jokes/** end-point should be stored in config file app.settings.json
    - The footer has static link - **http://api.icndb.com/jokes/** that should come from servers config.

**Windows environment variables**
**I MUST explain basic concepts windows environment variables.**
- Task:
  - Create your own env variable in windows system to store serilog settings.
==========================================================================================================================================

**Integrate with API - https://documenter.getpostman.com/view/5734027/RzZ6Hzr3?version=latest**
-Task:
  - Create background service which will collect data & preserve it on the disk in json file.
  - Place time when service runned in config file of project in milliseconds.
  - Start service every 5 minutes === 300 seconds.
  - Use web-workers technology implement IHostedService/BackgroundService abstract class.  