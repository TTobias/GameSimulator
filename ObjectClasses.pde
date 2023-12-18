// represents a single Die
public class Die{
  //For now only represents default numeric dice
  public int sides = 6;
  
  public Die() {}
  public Die(int s) {
    sides = s;
  }
  
  public int roll() {
    return int(random(sides));
  }
}



// represents a single board
public class Board{
  /////////////// UNFINISHED //////////////////////
}

public class HexBoard extends Board{}
public class QuadBoard extends Board{}
public class GraphBoard extends Board{}


// represents a field on a board
public class Field{
  /////////////// UNFINISHED //////////////////////
}



// represents a single piece
public class Piece{
  public String name;
  public String type; //PAWN, KNIGHT, QUEEN
  public String[] meta; //[team, movement]
  
  public Piece(String n){
    name = n;
  }
}



// represents a single card
public class Card{
  public String name;
  public String type; //DEFAULT, JOKER, etc
  public String[] meta; //ex: [suit, rank]
  
  public Card(String n){
    name = n;
  }
  
  public void effect(){
    //DUMMY FOR NOW
  }
}


// Represents a collection of cards with varying properties
public class CardPile{
  public ArrayList<Card> cards = new ArrayList<>();
  
  public void addCard(Card card){
    cards.add(card);
    println("Added a card");
  }
  
  public void removeCard(String name){
    for(int i = 0;i<cards.size(); i++){
      if(cards.get(i).name.equals(name)){
        cards.remove(cards.get(i));
        println("Removed a card");
        break;
      }
    }
  }
  public void removeCard(String name, int amount){
    for(int i = 0; i<amount; i++){
      removeCard(name);
    }
  }
  
  public boolean hasCard(String name){
    return hasCard(name, 1, MAX_INT);
  }
  public boolean hasCard(String name, int amount){
    return hasCard(name, amount, MAX_INT);
  }
  public boolean hasCard(String name, int min, int max){
    int counter = 0;
    for(int i = 0; i<cards.size(); i++){
      counter = cards.get(i).name.equals(name)? counter+1 : counter;
    }
    println("Checked for cards");
    return counter >= min && counter <= max;
  }
  
  public boolean isEmpty(){
    return cards.size() > 0;
  }
  
  public Card takeTopCard(){
    if(!isEmpty()){
      Card card = cards.get(0);
      println("Card drawn");
      cards.remove(card);
      return card;
    }
    return null;
  }
  
  public void shuffle(){
    ///////// NOT IMPLEMENTED YET /////////////////////////
  }
}


// Represents a collectcion of objects 
public class Storage{
  
}
