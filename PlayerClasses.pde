public class Player{
  public String name = "Name";
  
  // Cards
  public int maxHandSize = MAX_INT;
  public CardPile handcards = new CardPile();
  
  public Player(String n){
    name = n;
  }
  
  
  public void playCard(Card card, CardPile pile, boolean discard){
    if(handcards.hasCard(card.name)){
      if(discard){
        handcards.removeCard(card.name);
        pile.addCard(card);
      }
    }
  }
  
  public void drawCard(CardPile pile){
    handcards.addCard(pile.takeTopCard());
  }
}






public class PlayerSocket{
  public int id;
  
  
  public void sendJoinGame(){}
  
  public void sendPlayCard(){}
  
  public void sendDrawCard(){}
}
