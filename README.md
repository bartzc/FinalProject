# FinalProject
Space invaders



# Introduction:
Goal of this project is to create a space invaders type game, but with a few modifications such as power-up and a final boss, harder than all the other enemies, and an easter egg in the game, separate from the actual object of the game. The mechanics of the game will be very similar to  the original game, with some tweaks to accommodate for the final boss and easter egg. 


# Diffuculties 
The toughest part was trying to get the leaderboards to work becuase it was using code I had never done before


# Final Thoughts: 
I have done most that I wanted to complete, some things are missing but still more complete than the average cod game

Things that I want to finish over the summer:
Shields go in
Ships shoot back
push to leaderboards
easteregg

# Intresting Code
public class openBoard {

  private ArrayList<leaderboards> hold = new ArrayList<leaderboards>(5);

  public ArrayList<leaderboards> pullList() {
    BufferedReader read = createReader("leaderboards.txt");
    String line;

    try {
      while ((line=read.readLine())!=null) {

        String [] pieces = split(line, "  ");
        String x = pieces[0];
        int y = int(pieces[1]);
        hold.add(new leaderboards(x, y));
      }
      read.close();
    } 
    catch(IOException e) {
      e.printStackTrace();
    }
    return hold;
  }
}
This code pulled from a text file which is something we didn't learn this year so it was intresting to write.


## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Chris Bartz**


## Acknowledgments

* Rights to alien ship owners
* Hero ship made by me, all code written by me
* All ideas came from original game: Space Invaders
