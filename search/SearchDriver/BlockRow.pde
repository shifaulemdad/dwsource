class BlockRow {
  Block[] row;

  int numBlocks;
  int minBlockSize;
  int maxBlockSize;

  BlockRow(int nb, boolean ordered) {
    numBlocks = nb;
    minBlockSize = MIN_BLOCK_SIZE;

    row = new Block[numBlocks];
    setupBlocks(ordered);
  }//setup

  void setupBlocks(boolean ordered) {
    maxBlockSize = 0;
    minBlockSize = MIN_BLOCK_SIZE;
    int topSize = 100;
    
    if (ordered) {
      topSize = 10;
    }
    for (int i=0; i < row.length; i++) {
      int bsize = int(random(minBlockSize, topSize));
      if (maxBlockSize < bsize) {
        maxBlockSize = bsize;
      }//keep maxBlockSize up to date
      row[i] = new Block(0, 0, bsize);
      if (ordered) {
        minBlockSize = bsize;
        topSize = minBlockSize+5;
      }//keep thigns ordered
    }//array loop
    rearrange();
  }//setupBlocks

  void rearrange() {
    int x = 5;
    int y = 25;
    int topSize = 0;
    for (int i=0; i < row.length; i++) {
      if (topSize < row[i].sideLength) {
        topSize = row[i].sideLength;
      }//update topSize
      if (x + row[i].sideLength >= width) {
        x = 5;
        y+= topSize + 5;
      }//new row
      row[i].move(x, y);
      x+= row[i].sideLength +2;
    }//array loop
  }//rearrange

  void display() {
    for (int i=0; i < row.length; i++) {
      row[i].display();
    }//array loop
  }//viewBlocks

  void setBlockColor(int i, color c) {
    row[i].inside = c;
  }//resetBlockColor

  int find(int targetSize) {
    for (int i=0; i < row.length; i++) {
      if (row[i].sideLength == targetSize) {
        return i;
      }//found!
    }//array loop
    return -1;
  }//find

}//BlockRow
