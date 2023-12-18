// Simulates the game as a whole
public class Game{
  public Player[] turnOrder;
  public int activeTurnId = 0;
  
  public int turn = 0;
  
  
  public CardPile[] piles;
  //public CardPile drawPile;
  //public CardPile discardPile;
 
}


public class GameBuilder{
  public Game game;
  
  public GameBuilder(){}
  
  public void loadConfig(String path){
    //Read String
    
    game = new Game();
  }
  
  public void addPlayer(){
    
  }
  
  public void removePlayer(){
    
  }
}



// represents a full set of cards
public class Deck{
  // Has all permutations of suit and rank + special cards 
  // {"♠","♥","♣","♦"}
  public String[] suits = {"♠","♥","♣","♦"};
  public String[] ranks = {"A","2","3","4","5","6","7","8","9","10","B","Q","K"};
  public String[] special = {"J","J"};
  
  public Deck(){
    createCards();
  }
  public Deck(String[] su, String[] ra, String[] sp){
    suits = su;
    ranks = ra;
    special = sp;
    createCards();
  }
    
    
  public Card[] cards;
  public void createCards() {
    cards = new Card[suits.length*ranks.length + special.length];
    int index = 0;
    
    for(int s = 0; s<suits.length; s++){
      for(int r = 0; r<ranks.length; r++){
        cards[index] = new Card(suits[s] + ranks[r]);
        index++;
      }
    }
    
    for(int s = 0; s<special.length; s++){
      cards[index] = new Card(special[s]);
      index++;
    }
  }
}
