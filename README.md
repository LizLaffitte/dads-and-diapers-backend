# Dads and Diapers
Being a parent to small children comes with many challenges, having to worry about where you're going to change diapers when you're out of the house shouldn't be one of them.

Dads and Diapers is an all for finding and rating public places based on the availability and condition of changing tables.

[Frontend Repo](https://github.com/LizLaffitte/dads-and-diapers-frontend) | [Backend Repo](https://github.com/LizLaffitte/dads-and-diapers-backend)

## Getting Started
These instructions will get you a copy of Dads and Diapers up and running on your local machine for development and testing purposes.

### Prerequisites
Other than the gems and packages listed in this app's Gemfile and Package files, you will need to have [Ruby](https://www.ruby-lang.org/en/downloads/), [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html), [Node.js](https://nodejs.org/en/download/) and  [Yarn](https://classic.yarnpkg.com/en/docs/getting-started) installed on your local machine as well as the ability to install Ruby gems and Node packages.

### Installing

To run this app locally, fork and clone the [frontend GitHub repo](https://github.com/LizLaffitte/dads-and-diapers-frontend) and the [backend Github repo](https://github.com/LizLaffitte/dads-and-diapers-backend) to your local machine. 

Change directories into the backend local directory. Run bundle install to install dependencies, and rails db:migrate and rails db:seed to create and seed the database. 
```
$cd dads-and-diapers-frontend
$bundle install
$rails db:migrate
$rails db:seed
```

Run the following command in your terminal to launch a web server and access the backend API in a web browser. Note that we are specifying a port number. If port 3001 is not used, you will have to make changes to the fetch URLs on the frontend.
```
$rails s -p 3001
```

Change directories into the frontend local directory. Run the following commands to run the app in development mode. 

```
$cd ..
$cd dads-and-diapers-frontenc
$yarn start
```
The page will reload if you make edits.<br />
You will also see any lint errors in the console.

## Built With

* [Rails](https://rubyonrails.org/)
* [SQLite](https://www.sqlite.org/index.html)
* [React](https://reactjs.org/)
* [Redux](https://redux.js.org/)
* [Create React App](https://github.com/facebook/create-react-app).

## Roadmap
Plans to incorporate:
* Geocoding/map API
* Address autofills
* Ability to filter by state and zip code
* Listing name search

## Author
This application was built by Liz Laffitte as a final project for Flatiron School.

## Acknowledgements
Toggle components based entirely on Praveen Kumar's
[tutorial](https://www.sitepoint.com/react-toggle-switch-reusable-component/).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LizLaffitte/dads-and-diapers-frontend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant [code of conduct](CODE_OF_CONDUCT.md).


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details
