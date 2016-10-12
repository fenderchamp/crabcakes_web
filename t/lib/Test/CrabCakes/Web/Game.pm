package Test::CrabCakes::Web::Game;

use Moose;
use JSON::XS;

has new_game => ( 
  is  => 'ro',
  isa => 'Str',
  lazy => 1,,
  default =>  sub { do { local $/; <DATA> } },
);

1;

__DATA__
{
   "ref" : "CrabCakes::Game",
   "deck" : {
      "ref" : "CrabCakes::Deck",
      "size" : 28,
      "cards" : [
         {
            "number" : "10",
            "ref" : "CrabCakes::Card",
            "abbreviation" : "10H",
            "suit" : "hearts",
            "visible_to" : "nobody",
            "full_name" : "Ten of Hearts"
         },
         {
            "abbreviation" : "AD",
            "suit" : "diamonds",
            "visible_to" : "nobody",
            "full_name" : "Ace of Diamonds",
            "ref" : "CrabCakes::Card",
            "number" : "14"
         },
         {
            "number" : "10",
            "ref" : "CrabCakes::Card",
            "full_name" : "Ten of Clubs",
            "visible_to" : "nobody",
            "suit" : "clubs",
            "abbreviation" : "10C"
         },
         {
            "suit" : "hearts",
            "abbreviation" : "JH",
            "visible_to" : "nobody",
            "full_name" : "Jack of Hearts",
            "number" : "11",
            "ref" : "CrabCakes::Card"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "14",
            "full_name" : "Ace of Hearts",
            "visible_to" : "nobody",
            "suit" : "hearts",
            "abbreviation" : "AH"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "11",
            "visible_to" : "nobody",
            "full_name" : "Jack of Clubs",
            "abbreviation" : "JC",
            "suit" : "clubs"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "12",
            "suit" : "spades",
            "abbreviation" : "QS",
            "full_name" : "Queen of Spades",
            "visible_to" : "nobody"
         },
         {
            "full_name" : "King of Clubs",
            "visible_to" : "nobody",
            "abbreviation" : "KC",
            "suit" : "clubs",
            "ref" : "CrabCakes::Card",
            "number" : "13"
         },
         {
            "abbreviation" : "5D",
            "suit" : "diamonds",
            "full_name" : "Five of Diamonds",
            "visible_to" : "nobody",
            "number" : "5",
            "ref" : "CrabCakes::Card"
         },
         {
            "suit" : "hearts",
            "abbreviation" : "7H",
            "full_name" : "Seven of Hearts",
            "visible_to" : "nobody",
            "number" : "7",
            "ref" : "CrabCakes::Card"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "2",
            "visible_to" : "nobody",
            "full_name" : "Two of Spades",
            "suit" : "spades",
            "abbreviation" : "2S"
         },
         {
            "number" : "8",
            "ref" : "CrabCakes::Card",
            "visible_to" : "nobody",
            "full_name" : "Eight of Clubs",
            "suit" : "clubs",
            "abbreviation" : "8C"
         },
         {
            "abbreviation" : "6S",
            "suit" : "spades",
            "visible_to" : "nobody",
            "full_name" : "Six of Spades",
            "number" : "6",
            "ref" : "CrabCakes::Card"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "11",
            "visible_to" : "nobody",
            "full_name" : "Jack of Spades",
            "abbreviation" : "JS",
            "suit" : "spades"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "4",
            "visible_to" : "nobody",
            "full_name" : "Four of Hearts",
            "abbreviation" : "4H",
            "suit" : "hearts"
         },
         {
            "abbreviation" : "9D",
            "suit" : "diamonds",
            "full_name" : "Nine of Diamonds",
            "visible_to" : "nobody",
            "ref" : "CrabCakes::Card",
            "number" : "9"
         },
         {
            "visible_to" : "nobody",
            "full_name" : "Two of Diamonds",
            "abbreviation" : "2D",
            "suit" : "diamonds",
            "number" : "2",
            "ref" : "CrabCakes::Card"
         },
         {
            "visible_to" : "nobody",
            "full_name" : "Queen of Clubs",
            "suit" : "clubs",
            "abbreviation" : "QC",
            "number" : "12",
            "ref" : "CrabCakes::Card"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "9",
            "full_name" : "Nine of Hearts",
            "visible_to" : "nobody",
            "abbreviation" : "9H",
            "suit" : "hearts"
         },
         {
            "number" : "12",
            "ref" : "CrabCakes::Card",
            "abbreviation" : "QD",
            "suit" : "diamonds",
            "full_name" : "Queen of Diamonds",
            "visible_to" : "nobody"
         },
         {
            "ref" : "CrabCakes::Card",
            "number" : "4",
            "suit" : "diamonds",
            "abbreviation" : "4D",
            "full_name" : "Four of Diamonds",
            "visible_to" : "nobody"
         },
         {
            "abbreviation" : "4S",
            "suit" : "spades",
            "visible_to" : "nobody",
            "full_name" : "Four of Spades",
            "ref" : "CrabCakes::Card",
            "number" : "4"
         },
         {
            "suit" : "clubs",
            "abbreviation" : "4C",
            "visible_to" : "nobody",
            "full_name" : "Four of Clubs",
            "ref" : "CrabCakes::Card",
            "number" : "4"
         },
         {
            "full_name" : "Ace of Clubs",
            "visible_to" : "nobody",
            "abbreviation" : "AC",
            "suit" : "clubs",
            "ref" : "CrabCakes::Card",
            "number" : "14"
         },
         {
            "visible_to" : "nobody",
            "full_name" : "Nine of Spades",
            "suit" : "spades",
            "abbreviation" : "9S",
            "number" : "9",
            "ref" : "CrabCakes::Card"
         },
         {
            "number" : "13",
            "ref" : "CrabCakes::Card",
            "full_name" : "King of Hearts",
            "visible_to" : "nobody",
            "suit" : "hearts",
            "abbreviation" : "KH"
         },
         {
            "abbreviation" : "5S",
            "suit" : "spades",
            "visible_to" : "nobody",
            "full_name" : "Five of Spades",
            "number" : "5",
            "ref" : "CrabCakes::Card"
         },
         {
            "full_name" : "Seven of Diamonds",
            "visible_to" : "nobody",
            "suit" : "diamonds",
            "abbreviation" : "7D",
            "ref" : "CrabCakes::Card",
            "number" : "7"
         }
      ]
   },
   "players" : [
      {
         "ref" : "CrabCakes::Player",
         "is_ready" : 0,
         "hand" : {
            "size" : 4,
            "cards" : [
               {
                  "abbreviation" : "10D",
                  "suit" : "diamonds",
                  "visible_to" : "player",
                  "full_name" : "Ten of Diamonds",
                  "ref" : "CrabCakes::Card",
                  "number" : "10"
               },
               {
                  "ref" : "CrabCakes::Card",
                  "number" : "2",
                  "abbreviation" : "2C",
                  "suit" : "clubs",
                  "visible_to" : "player",
                  "full_name" : "Two of Clubs"
               },
               {
                  "visible_to" : "player",
                  "full_name" : "Five of Hearts",
                  "abbreviation" : "5H",
                  "suit" : "hearts",
                  "number" : "5",
                  "ref" : "CrabCakes::Card"
               },
               {
                  "ref" : "CrabCakes::Card",
                  "number" : "14",
                  "visible_to" : "player",
                  "full_name" : "Ace of Spades",
                  "suit" : "spades",
                  "abbreviation" : "AS"
               }
            ],
            "ref" : "CrabCakes::Hand"
         },
         "is_turn" : 0,
         "hand_size" : 4,
         "crab_cakes" : [
            {
               "ref" : "CrabCakes::CrabCake",
               "size" : 2,
               "cards" : [
                  {
                     "visible_to" : "nobody",
                     "full_name" : "Three of Diamonds",
                     "suit" : "diamonds",
                     "abbreviation" : "3D",
                     "ref" : "CrabCakes::Card",
                     "number" : "3"
                  },
                  {
                     "visible_to" : "everybody",
                     "full_name" : "Seven of Clubs",
                     "abbreviation" : "7C",
                     "suit" : "clubs",
                     "number" : "7",
                     "ref" : "CrabCakes::Card"
                  }
               ]
            },
            {
               "size" : 2,
               "cards" : [
                  {
                     "ref" : "CrabCakes::Card",
                     "number" : "12",
                     "suit" : "hearts",
                     "abbreviation" : "QH",
                     "full_name" : "Queen of Hearts",
                     "visible_to" : "nobody"
                  },
                  {
                     "visible_to" : "everybody",
                     "full_name" : "Two of Hearts",
                     "suit" : "hearts",
                     "abbreviation" : "2H",
                     "ref" : "CrabCakes::Card",
                     "number" : "2"
                  }
               ],
               "ref" : "CrabCakes::CrabCake"
            },
            {
               "size" : 2,
               "cards" : [
                  {
                     "ref" : "CrabCakes::Card",
                     "number" : "10",
                     "visible_to" : "nobody",
                     "full_name" : "Ten of Spades",
                     "suit" : "spades",
                     "abbreviation" : "10S"
                  },
                  {
                     "ref" : "CrabCakes::Card",
                     "number" : "7",
                     "visible_to" : "everybody",
                     "full_name" : "Seven of Spades",
                     "suit" : "spades",
                     "abbreviation" : "7S"
                  }
               ],
               "ref" : "CrabCakes::CrabCake"
            },
            {
               "size" : 2,
               "cards" : [
                  {
                     "number" : "3",
                     "ref" : "CrabCakes::Card",
                     "visible_to" : "nobody",
                     "full_name" : "Three of Clubs",
                     "abbreviation" : "3C",
                     "suit" : "clubs"
                  },
                  {
                     "visible_to" : "everybody",
                     "full_name" : "Five of Clubs",
                     "suit" : "clubs",
                     "abbreviation" : "5C",
                     "ref" : "CrabCakes::Card",
                     "number" : "5"
                  }
               ],
               "ref" : "CrabCakes::CrabCake"
            }
         ],
         "name" : 0,
         "player_counter" : 0,
         "turns_taken" : 0,
         "id" : "CXVY5gEQQAhTSoFOlroxH4U6"
      },
      {
         "hand_size" : 4,
         "crab_cakes" : [
            {
               "cards" : [
                  {
                     "abbreviation" : "8H",
                     "suit" : "hearts",
                     "visible_to" : "nobody",
                     "full_name" : "Eight of Hearts",
                     "ref" : "CrabCakes::Card",
                     "number" : "8"
                  },
                  {
                     "ref" : "CrabCakes::Card",
                     "number" : "8",
                     "visible_to" : "everybody",
                     "full_name" : "Eight of Diamonds",
                     "abbreviation" : "8D",
                     "suit" : "diamonds"
                  }
               ],
               "size" : 2,
               "ref" : "CrabCakes::CrabCake"
            },
            {
               "size" : 2,
               "cards" : [
                  {
                     "visible_to" : "nobody",
                     "full_name" : "Six of Clubs",
                     "suit" : "clubs",
                     "abbreviation" : "6C",
                     "number" : "6",
                     "ref" : "CrabCakes::Card"
                  },
                  {
                     "number" : "8",
                     "ref" : "CrabCakes::Card",
                     "full_name" : "Eight of Spades",
                     "visible_to" : "everybody",
                     "abbreviation" : "8S",
                     "suit" : "spades"
                  }
               ],
               "ref" : "CrabCakes::CrabCake"
            },
            {
               "ref" : "CrabCakes::CrabCake",
               "cards" : [
                  {
                     "visible_to" : "nobody",
                     "full_name" : "Nine of Clubs",
                     "suit" : "clubs",
                     "abbreviation" : "9C",
                     "number" : "9",
                     "ref" : "CrabCakes::Card"
                  },
                  {
                     "visible_to" : "everybody",
                     "full_name" : "Six of Hearts",
                     "suit" : "hearts",
                     "abbreviation" : "6H",
                     "ref" : "CrabCakes::Card",
                     "number" : "6"
                  }
               ],
               "size" : 2
            },
            {
               "size" : 2,
               "cards" : [
                  {
                     "ref" : "CrabCakes::Card",
                     "number" : "13",
                     "full_name" : "King of Diamonds",
                     "visible_to" : "nobody",
                     "abbreviation" : "KD",
                     "suit" : "diamonds"
                  },
                  {
                     "number" : "3",
                     "ref" : "CrabCakes::Card",
                     "full_name" : "Three of Hearts",
                     "visible_to" : "everybody",
                     "abbreviation" : "3H",
                     "suit" : "hearts"
                  }
               ],
               "ref" : "CrabCakes::CrabCake"
            }
         ],
         "is_turn" : 0,
         "is_ready" : 0,
         "hand" : {
            "cards" : [
               {
                  "ref" : "CrabCakes::Card",
                  "number" : "11",
                  "full_name" : "Jack of Diamonds",
                  "visible_to" : "player",
                  "suit" : "diamonds",
                  "abbreviation" : "JD"
               },
               {
                  "full_name" : "Six of Diamonds",
                  "visible_to" : "player",
                  "suit" : "diamonds",
                  "abbreviation" : "6D",
                  "number" : "6",
                  "ref" : "CrabCakes::Card"
               },
               {
                  "visible_to" : "player",
                  "full_name" : "Three of Spades",
                  "abbreviation" : "3S",
                  "suit" : "spades",
                  "ref" : "CrabCakes::Card",
                  "number" : "3"
               },
               {
                  "full_name" : "King of Spades",
                  "visible_to" : "player",
                  "suit" : "spades",
                  "abbreviation" : "KS",
                  "ref" : "CrabCakes::Card",
                  "number" : "13"
               }
            ],
            "size" : 4,
            "ref" : "CrabCakes::Hand"
         },
         "ref" : "CrabCakes::Player",
         "turns_taken" : 0,
         "id" : "E5yk78ehuLSgQ4XVzWcnwsK9",
         "player_counter" : 1,
         "name" : 1
      }
   ],
   "game_size" : "2",
   "discards" : {
      "ref" : "CrabCakes::Discards",
      "size" : 0
   },
   "id" : "qTCqgJMvaLv6PruPT1JXB9WD",
   "starting_player" : "PlayersNotReady"
}
