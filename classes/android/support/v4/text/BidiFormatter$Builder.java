package android.support.v4.text;

import java.util.Locale;

public final class BidiFormatter$Builder {
  private int mFlags;
  
  private boolean mIsRtlContext;
  
  private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;
  
  public BidiFormatter$Builder() {
    initialize(BidiFormatter.access$000(Locale.getDefault()));
  }
  
  public BidiFormatter$Builder(Locale paramLocale) {
    initialize(BidiFormatter.access$000(paramLocale));
  }
  
  public BidiFormatter$Builder(boolean paramBoolean) {
    initialize(paramBoolean);
  }
  
  private static BidiFormatter getDefaultInstanceFromContext(boolean paramBoolean) {
    return paramBoolean ? BidiFormatter.access$200() : BidiFormatter.access$300();
  }
  
  private void initialize(boolean paramBoolean) {
    this.mIsRtlContext = paramBoolean;
    this.mTextDirectionHeuristicCompat = BidiFormatter.access$100();
    this.mFlags = 2;
  }
  
  public BidiFormatter build() {
    return (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.access$100()) ? getDefaultInstanceFromContext(this.mIsRtlContext) : new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat, null);
  }
  
  public BidiFormatter$Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    this.mTextDirectionHeuristicCompat = paramTextDirectionHeuristicCompat;
    return this;
  }
  
  public BidiFormatter$Builder stereoReset(boolean paramBoolean) {
    if (paramBoolean) {
      this.mFlags |= 0x2;
      return this;
    } 
    this.mFlags &= 0xFFFFFFFD;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\BidiFormatter$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */