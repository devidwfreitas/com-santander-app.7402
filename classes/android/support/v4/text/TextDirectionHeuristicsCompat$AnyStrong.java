package android.support.v4.text;

class TextDirectionHeuristicsCompat$AnyStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
  public static final TextDirectionHeuristicsCompat$AnyStrong INSTANCE_LTR;
  
  public static final TextDirectionHeuristicsCompat$AnyStrong INSTANCE_RTL = new TextDirectionHeuristicsCompat$AnyStrong(true);
  
  private final boolean mLookForRtl;
  
  static {
    INSTANCE_LTR = new TextDirectionHeuristicsCompat$AnyStrong(false);
  }
  
  private TextDirectionHeuristicsCompat$AnyStrong(boolean paramBoolean) {
    this.mLookForRtl = paramBoolean;
  }
  
  public int checkRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    boolean bool = true;
    int j = 0;
    int i = paramInt1;
    while (true) {
      int k = i;
      if (k < paramInt1 + paramInt2) {
        switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(paramCharSequence.charAt(k)))) {
          case 0:
            if (this.mLookForRtl)
              return 0; 
            i = 1;
            k++;
            j = i;
            i = k;
            break;
          case 1:
            i = bool;
            if (this.mLookForRtl) {
              i = 1;
            } else {
              return i;
            } 
            k++;
            j = i;
            i = k;
            break;
        } 
        continue;
      } 
      if (j != 0) {
        i = bool;
        return !this.mLookForRtl ? 0 : i;
      } 
      return 2;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextDirectionHeuristicsCompat$AnyStrong.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */