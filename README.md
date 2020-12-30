## About
Scraper program that works in the terminal to fetch and display the top positions list of three of the most popular soccer leagues in Europe. Built with Ruby, Nokogiri, and Rubocop. 

![](https://img.shields.io/badge/Microverse-blueviolet)
# Web Scraper: Europe's Football Leagues

> In this project I created a web scraper program to parse HTML documents.
The websites that are used for the project are:
[Premier League](https://www.espn.com/soccer/table/_/league/eng.1)
[Serie A](https://www.espn.com/soccer/table/_/league/ita.1)
[Bundesliga](https://www.espn.com/soccer/table/_/league/ger.1)
The final output is a list with the top five teams (based on the specified league from the given menu), current total points by team, and the specific URL at the end of the list.
It is made to run on the terminal/command line.
The 'main_scraper' file is executable, so it can run easily.

## Examples
![img_1](./images/web-scraper1.png)
![img_2](./images/web-scraper3.png)
![img_3](./images/web-scraper3.png)

## Built With
- Ruby (v. 2.7.0)
- Rubocop
- Git
- RSpec
- Nokogiri gem (v. 1.10.10)
- Colorize gem

## Setup
If you don't have them, please install, on the command line/terminal:
- Nokogiri gem: 'gem install nokogiri'
- Colorize gem: 'gem install colorize'

## How to run it
To get a local copy up and running follow these simple steps:
* It's recommended to use Git's latest version.
* Clone or download the repo from here [soccer-leagues-scraper](https://github.com/Milypm/soccer-leagues-scraper.git) on your local host.
* Unzip/Open the root folder, on the command line/terminal:
    Type: main_scraper
    The program (scraper) should display now on the terminal.

## Testing with RSpec
- Verify that you have RSpec installed: go to the Terminal/Command line and type: 'rspec -v' or 'rspec --version'.
- To install Rspec: go to the Terminal/Command line and type: 'gem install rspec', you can now verify the version installed with 'rspec -v' or 'rspec --version'.
- Open the root directory for this repository ('soccer-leagues-scraper'):
    Type: rspec

## Authors
**Mily Puente** :woman_technologist:
- GitHub: [@Milypm](https://github.com/Milypm)
- LinkedIn: [Mily Puente](https://www.linkedin.com/in/milypuentem/)

## Contribute :point_left:
Any advice and suggestion for improvement, is more than welcome.
Visit [issues' section](https://github.com/Milypm/soccer-leagues-scraper/issues)

## Show your support
Give a :star2: if you like this project!

## License
This project is [MIT](https://github.com/Milypm/Ruby_OOP_TicTacToe/blob/develop/LICENSE) licensed.
