package android.support.v4.text;

import java.nio.CharBuffer;

abstract class TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
  private final TextDirectionHeuristicsCompat$TextDirectionAlgorithm mAlgorithm;
  
  public TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl(TextDirectionHeuristicsCompat$TextDirectionAlgorithm paramTextDirectionHeuristicsCompat$TextDirectionAlgorithm) {
    this.mAlgorithm = paramTextDirectionHeuristicsCompat$TextDirectionAlgorithm;
  }
  
  private boolean doCheck(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    switch (this.mAlgorithm.checkRtl(paramCharSequence, paramInt1, paramInt2)) {
      default:
        return defaultIsRtl();
      case 0:
        return true;
      case 1:
        break;
    } 
    return false;
  }
  
  protected abstract boolean defaultIsRtl();
  
  public boolean isRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    if (paramCharSequence == null || paramInt1 < 0 || paramInt2 < 0 || paramCharSequence.length() - paramInt2 < paramInt1)
      throw new IllegalArgumentException(); 
    return (this.mAlgorithm == null) ? defaultIsRtl() : doCheck(paramCharSequence, paramInt1, paramInt2);
  }
  
  public boolean isRtl(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    return isRtl(CharBuffer.wrap(paramArrayOfchar), paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */