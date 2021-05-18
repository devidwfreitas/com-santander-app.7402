package android.support.v7.widget;

public final class GridLayoutManager$DefaultSpanSizeLookup extends GridLayoutManager$SpanSizeLookup {
  public int getSpanIndex(int paramInt1, int paramInt2) {
    return paramInt1 % paramInt2;
  }
  
  public int getSpanSize(int paramInt) {
    return 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayoutManager$DefaultSpanSizeLookup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */