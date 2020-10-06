# Dads and Diapers
A React application designed to help parents of young children find and review public places based on the availability of changing tables. Users can add locations, view reviews and leave reviews of their own. For each location, users are asked whether changing rooms are available in mens and women's rooms, and whether they are clean and in good working order. 

Being a parent to small children comes with many challenges, having to worry about where you're going to change diapers when you're out of the house shouldn't be one of them.

Dads and Diapers was built from my husband's and my experience as first time parents. Whenever we ventured out of the house with our newborn, I could count on having to handle any dirty diapers because of the lack of changing tables in men's public restrooms. Dads and Diapers was created to serve as a tool for parents as well as a way to encourage greater availability of changing tables.

[Frontend Repo](https://github.com/LizLaffitte/dads-and-diapers-frontend) | [Backend Repo](https://github.com/LizLaffitte/dads-and-diapers-backend)


## Local Installation
These instructions will get you a copy of Dads and Diapers up and running on your local machine for development and testing purposes.

### Prerequisites
Other than the gems and packages listed in this app's Gemfile and Package files, you will need to have [Ruby](https://www.ruby-lang.org/en/downloads/), [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html), [Node.js](https://nodejs.org/en/download/) and a package manager ([Yarn](https://classic.yarnpkg.com/en/docs/getting-started) or [npm](https://www.npmjs.com/)) installed on your local machine as well as the ability to install Ruby gems and Node packages.

### Installing

To run this app locally, fork and clone the [frontend GitHub repo](https://github.com/LizLaffitte/dads-and-diapers-frontend) and the [backend Github repo](https://github.com/LizLaffitte/dads-and-diapers-backend) to your local machine. 

Change directories into the backend local directory. Run bundle install to install dependencies, and rails db:migrate and rails db:seed to create and seed the database. 
```
$cd dads-and-diapers-backend
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
$cd dads-and-diapers-frontend
$npm install
$yarn start
```
Visit http://localhost:3000/ in your browser. The page will reload if you make edits.<br />
You will also see any lint errors in the console.

## Using Dads & Diapers
Visit [http://localhost:3000/](http://localhost:3000/) in your favorite browser. You can view added listings and their reviews, but to add any listings or reviews of your own, [sign up](http://localhost:3000/signup) or [log in](http://localhost:3000/login).

![Dads Diapers](https://user-images.githubusercontent.com/52801558/95229428-90448880-07ce-11eb-8829-30b2126051d6.PNG)

### Listings
Browse [listings](http://localhost:3000/listings) to find a public venue. Click a listing's more button to view others' reviews or leave a one yourself.

![ListingPage](https://user-images.githubusercontent.com/52801558/95230015-4c05b800-07cf-11eb-9f37-f780f1719e61.PNG)

### Leave a Review
Once on a single listing's page, click Add Review to add your own review. You will be asked to indicate the changing room availability and status by answering 5 yes or no questions.

![AddReview](https://user-images.githubusercontent.com/52801558/95230169-85d6be80-07cf-11eb-8a2f-020a483c84de.PNG)

### Add a Listing
Can't find the listing you're looking for? [Add a new listing.] (http://localhost:3000/listings/new)

![NewListing](https://user-images.githubusercontent.com/52801558/95230584-16150380-07d0-11eb-89e4-11e45c8f5794.PNG)


## Built With

* [Rails](https://rubyonrails.org/)
* [SQLite](https://www.sqlite.org/index.html)
* [React](https://reactjs.org/)
* [Redux](https://redux.js.org/)
* Thunk
* [Create React App](https://github.com/facebook/create-react-app).
* Flexbox

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
