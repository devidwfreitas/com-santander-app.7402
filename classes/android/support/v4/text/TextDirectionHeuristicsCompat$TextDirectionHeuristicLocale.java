package android.support.v4.text;

import java.util.Locale;

class TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale extends TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl {
  public static final TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale();
  
  public TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale() {
    super(null);
  }
  
  protected boolean defaultIsRtl() {
    return (TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */