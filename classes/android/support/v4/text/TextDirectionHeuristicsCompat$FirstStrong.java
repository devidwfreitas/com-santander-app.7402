package android.support.v4.text;

class TextDirectionHeuristicsCompat$FirstStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
  public static final TextDirectionHeuristicsCompat$FirstStrong INSTANCE = new TextDirectionHeuristicsCompat$FirstStrong();
  
  public int checkRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2) {
    int j = 2;
    int i;
    for (i = paramInt1; i < paramInt1 + paramInt2 && j == 2; i++)
      j = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(paramCharSequence.charAt(i))); 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextDirectionHeuristicsCompat$FirstStrong.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */