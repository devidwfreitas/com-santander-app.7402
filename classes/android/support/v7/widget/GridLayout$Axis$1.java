package android.support.v7.widget;

class GridLayout$Axis$1 {
  GridLayout$Arc[][] arcsByVertex = GridLayout$Axis.this.groupArcsByFirstVertex(arcs);
  
  int cursor = this.result.length - 1;
  
  GridLayout$Arc[] result = new GridLayout$Arc[arcs.length];
  
  int[] visited = new int[GridLayout$Axis.this.getCount() + 1];
  
  static {
    boolean bool;
    if (!GridLayout.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    $assertionsDisabled = bool;
  }
  
  GridLayout$Arc[] sort() {
    int i = 0;
    int j = this.arcsByVertex.length;
    while (i < j) {
      walk(i);
      i++;
    } 
    assert this.cursor == -1;
    return this.result;
  }
  
  void walk(int paramInt) {
    switch (this.visited[paramInt]) {
      default:
        return;
      case 0:
        this.visited[paramInt] = 1;
        for (GridLayout$Arc gridLayout$Arc : this.arcsByVertex[paramInt]) {
          walk(gridLayout$Arc.span.max);
          GridLayout$Arc[] arrayOfGridLayout$Arc = this.result;
          int i = this.cursor;
          this.cursor = i - 1;
          arrayOfGridLayout$Arc[i] = gridLayout$Arc;
        } 
        this.visited[paramInt] = 2;
        return;
      case 1:
        break;
    } 
    assert false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Axis$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */