Prognosticator Appliation
========================

Users
- as players:
  - Have many guesses 
  - Have many games through guesses
  - Have many factoids, through games 

- as admins:
    + Can add images to game-players
    + Can add factoids to game-players

Games
- Have many Guesses
- Have many Players, through Guesses
- Have many Factoids

Guesses
- Belong to a Player
- Belong to a Game
    + ND Score
    + Oppo Score
    + Bonus Question

Factoid
- Belongs to a Game
    + game_id
- Belongs to a Player
    + player_id
    + picture