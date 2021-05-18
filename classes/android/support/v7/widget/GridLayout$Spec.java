package android.support.v7.widget;

public class GridLayout$Spec {
  static final float DEFAULT_WEIGHT = 0.0F;
  
  static final GridLayout$Spec UNDEFINED = GridLayout.spec(-2147483648);
  
  final GridLayout$Alignment alignment;
  
  final GridLayout$Interval span;
  
  final boolean startDefined;
  
  final float weight;
  
  GridLayout$Spec(boolean paramBoolean, int paramInt1, int paramInt2, GridLayout$Alignment paramGridLayout$Alignment, float paramFloat) {
    this(paramBoolean, new GridLayout$Interval(paramInt1, paramInt1 + paramInt2), paramGridLayout$Alignment, paramFloat);
  }
  
  private GridLayout$Spec(boolean paramBoolean, GridLayout$Interval paramGridLayout$Interval, GridLayout$Alignment paramGridLayout$Alignment, float paramFloat) {
    this.startDefined = paramBoolean;
    this.span = paramGridLayout$Interval;
    this.alignment = paramGridLayout$Alignment;
    this.weight = paramFloat;
  }
  
  final GridLayout$Spec copyWriteAlignment(GridLayout$Alignment paramGridLayout$Alignment) {
    return new GridLayout$Spec(this.startDefined, this.span, paramGridLayout$Alignment, this.weight);
  }
  
  final GridLayout$Spec copyWriteSpan(GridLayout$Interval paramGridLayout$Interval) {
    return new GridLayout$Spec(this.startDefined, paramGridLayout$Interval, this.alignment, this.weight);
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (!this.alignment.equals(((GridLayout$Spec)paramObject).alignment))
        return false; 
      if (!this.span.equals(((GridLayout$Spec)paramObject).span))
        return false; 
    } 
    return true;
  }
  
  public GridLayout$Alignment getAbsoluteAlignment(boolean paramBoolean) {
    return (this.alignment != GridLayout.UNDEFINED_ALIGNMENT) ? this.alignment : ((this.weight == 0.0F) ? (paramBoolean ? GridLayout.START : GridLayout.BASELINE) : GridLayout.FILL);
  }
  
  final int getFlexibility() {
    return (this.alignment == GridLayout.UNDEFINED_ALIGNMENT && this.weight == 0.0F) ? 0 : 2;
  }
  
  public int hashCode() {
    return this.span.hashCode() * 31 + this.alignment.hashCode();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayout$Spec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */