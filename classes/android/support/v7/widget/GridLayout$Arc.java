package android.support.v7.widget;

final class GridLayout$Arc {
  public final GridLayout$Interval span;
  
  public boolean valid = true;
  
  public final GridLayout$MutableInt value;
  
  public GridLayout$Arc(GridLayout$Interval paramGridLayout$Interval, GridLayout$MutableInt paramGridLayout$MutableInt) {
    this.span = paramGridLayout$Interval;
    this.value = paramGridLayout$MutableInt;
  }
  
  public String toString() {
    StringBuilder stringBuilder = (new StringBuilder()).append(this.span).append(" ");
    if (!this.valid) {
      String str1 = "+>";
      return stringBuilder.append(str1).append(" ").append(this.value).toString();
    } 
    String str = "->";
    return stringBuilder.append(str).append(" ").append(this.value).toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Arc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */