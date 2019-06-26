# SMATA Code Test

## Built With

* Ruby 2
* Ruby on Rails 5
* [Bootstrap](https://getbootstrap.com)

## Gems

Apart from the default included gems, additional added:
* mysql2
* httparty
* actionpack-action_caching

## Pages
* Home
  - This page shows a list of Films. 
  - Films are sorted via js. It will sort first via episode number. Then sort to put the favorited Films on top of the list.
  - Used bootstrap's tooltip to show additional details about the film.

* Search
  - This page reuses the home page view.
  - Shows the film/s matching the search term.

* Film Show
  - This page takes a while to load at first since it gathers the data from the api. Then the page is cached for an hour.
  - Used bootstrap's tooltip to show additional details on the list of characters, vehicles, planets, starships and species.

