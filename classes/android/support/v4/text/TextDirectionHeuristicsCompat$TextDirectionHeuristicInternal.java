package android.support.v4.text;

class TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal extends TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl {
  private final boolean mDefaultIsRtl;
  
  TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat$TextDirectionAlgorithm paramTextDirectionHeuristicsCompat$TextDirectionAlgorithm, boolean paramBoolean) {
    super(paramTextDirectionHeuristicsCompat$TextDirectionAlgorithm);
    this.mDefaultIsRtl = paramBoolean;
  }
  
  protected boolean defaultIsRtl() {
    return this.mDefaultIsRtl;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */