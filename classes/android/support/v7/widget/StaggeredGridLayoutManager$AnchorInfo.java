package android.support.v7.widget;

import java.util.Arrays;

class StaggeredGridLayoutManager$AnchorInfo {
  boolean mInvalidateOffsets;
  
  boolean mLayoutFromEnd;
  
  int mOffset;
  
  int mPosition;
  
  int[] mSpanReferenceLines;
  
  boolean mValid;
  
  public StaggeredGridLayoutManager$AnchorInfo() {
    reset();
  }
  
  void assignCoordinateFromPadding() {
    int i;
    if (this.mLayoutFromEnd) {
      i = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding();
    } else {
      i = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
    } 
    this.mOffset = i;
  }
  
  void assignCoordinateFromPadding(int paramInt) {
    if (this.mLayoutFromEnd) {
      this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() - paramInt;
      return;
    } 
    this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding() + paramInt;
  }
  
  void reset() {
    this.mPosition = -1;
    this.mOffset = Integer.MIN_VALUE;
    this.mLayoutFromEnd = false;
    this.mInvalidateOffsets = false;
    this.mValid = false;
    if (this.mSpanReferenceLines != null)
      Arrays.fill(this.mSpanReferenceLines, -1); 
  }
  
  void saveSpanReferenceLines(StaggeredGridLayoutManager$Span[] paramArrayOfStaggeredGridLayoutManager$Span) {
    int j = paramArrayOfStaggeredGridLayoutManager$Span.length;
    if (this.mSpanReferenceLines == null || this.mSpanReferenceLines.length < j)
      this.mSpanReferenceLines = new int[StaggeredGridLayoutManager.this.mSpans.length]; 
    for (int i = 0; i < j; i++)
      this.mSpanReferenceLines[i] = paramArrayOfStaggeredGridLayoutManager$Span[i].getStartLine(-2147483648); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$AnchorInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */