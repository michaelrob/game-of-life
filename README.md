# Game of Life

### Description

Conways game of life. From wikipedia:

`The "game" is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves, or, for advanced "players", by creating patterns with particular properties.`

The rules to be followed:

 - Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
 - Any live cell with two or three live neighbours lives on to the next generation.
 - Any live cell with more than three live neighbours dies, as if by overpopulation.
 - Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

### Setup & Run

Set up using the below steps.

Requirements:
 - ruby 2.3.3
 - bundler, install with: `gem install bundle`

Install gems by using: `bundle install`.

To run the game of life, use: `bundle exec rake`.

The included specs can be run by using: `bundle exec rspec`
