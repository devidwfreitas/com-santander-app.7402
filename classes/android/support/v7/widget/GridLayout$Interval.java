package android.support.v7.widget;

final class GridLayout$Interval {
  public final int max;
  
  public final int min;
  
  public GridLayout$Interval(int paramInt1, int paramInt2) {
    this.min = paramInt1;
    this.max = paramInt2;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.max != ((GridLayout$Interval)paramObject).max)
        return false; 
      if (this.min != ((GridLayout$Interval)paramObject).min)
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return this.min * 31 + this.max;
  }
  
  GridLayout$Interval inverse() {
    return new GridLayout$Interval(this.max, this.min);
  }
  
  int size() {
    return this.max - this.min;
  }
  
  public String toString() {
    return "[" + this.min + ", " + this.max + "]";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Interval.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */