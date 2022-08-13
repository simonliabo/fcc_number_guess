#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#generate the number
SNUMBER=$(( ( RANDOM % 1000 )  + 1 ))

NUMBER_GUESS() {
  echo "Enter your username:"
  read USERNAME
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  #if empty > new user
  if [[ -z $USER_ID ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    ADD_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  else
    GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games GROUP BY user_id HAVING user_id=$USER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(n_guesses) FROM games GROUP BY user_id HAVING user_id=$USER_ID")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS = $SNUMBER ]]
    then
      NGUESS=1
      echo "You guessed it in $NGUESS tries. The secret number was $SNUMBER. Nice job!"
      #enter game_info to database
      INSERT_GAME=$($PSQL "INSERT INTO games(user_id,n_guesses) VALUES($USER_ID,$NGUESS)")
    else
      NGUESS=1
      while [[ $GUESS -ne $SNUMBER ]]
      do
        NGUESS=$(( $NGUESS + 1 ))
        if [[ $GUESS -gt $SNUMBER ]]
        then
          echo "It's lower than that, guess again:"
          read GUESS
          if [[ ! $GUESS =~ ^[0-9]+$ ]]
          then
            echo "That is not an integer, guess again:"
            read GUESS
          fi
        else
          echo "It's higher than that, guess again:"
          read GUESS
          if [[ ! $GUESS =~ ^[0-9]+$ ]]
          then
            echo "That is not an integer, guess again:"
            read GUESS
          fi
        fi
      done
      echo "You guessed it in $NGUESS tries. The secret number was $SNUMBER. Nice job!"
      #enter game info to database
      INSERT_GAME=$($PSQL "INSERT INTO games(user_id,n_guesses) VALUES($USER_ID,$NGUESS)")
    fi
  else
    echo "That is not an integer, guess again:"
  fi
}

NUMBER_GUESS