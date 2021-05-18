package android.support.v4.text;

import android.text.SpannableStringBuilder;
import java.util.Locale;

public final class BidiFormatter {
  private static final int DEFAULT_FLAGS = 2;
  
  private static final BidiFormatter DEFAULT_LTR_INSTANCE;
  
  private static final BidiFormatter DEFAULT_RTL_INSTANCE;
  
  private static TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
  
  private static final int DIR_LTR = -1;
  
  private static final int DIR_RTL = 1;
  
  private static final int DIR_UNKNOWN = 0;
  
  private static final String EMPTY_STRING = "";
  
  private static final int FLAG_STEREO_RESET = 2;
  
  private static final char LRE = '‪';
  
  private static final char LRM = '‎';
  
  private static final String LRM_STRING = Character.toString('‎');
  
  private static final char PDF = '‬';
  
  private static final char RLE = '‫';
  
  private static final char RLM = '‏';
  
  private static final String RLM_STRING = Character.toString('‏');
  
  private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
  
  private final int mFlags;
  
  private final boolean mIsRtlContext;
  
  static {
    DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
    DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
  }
  
  private BidiFormatter(boolean paramBoolean, int paramInt, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    this.mIsRtlContext = paramBoolean;
    this.mFlags = paramInt;
    this.mDefaultTextDirectionHeuristicCompat = paramTextDirectionHeuristicCompat;
  }
  
  private static int getEntryDir(CharSequence paramCharSequence) {
    return (new BidiFormatter$DirectionalityEstimator(paramCharSequence, false)).getEntryDir();
  }
  
  private static int getExitDir(CharSequence paramCharSequence) {
    return (new BidiFormatter$DirectionalityEstimator(paramCharSequence, false)).getExitDir();
  }
  
  public static BidiFormatter getInstance() {
    return (new BidiFormatter$Builder()).build();
  }
  
  public static BidiFormatter getInstance(Locale paramLocale) {
    return (new BidiFormatter$Builder(paramLocale)).build();
  }
  
  public static BidiFormatter getInstance(boolean paramBoolean) {
    return (new BidiFormatter$Builder(paramBoolean)).build();
  }
  
  private static boolean isRtlLocale(Locale paramLocale) {
    return (TextUtilsCompat.getLayoutDirectionFromLocale(paramLocale) == 1);
  }
  
  private String markAfter(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    return (!this.mIsRtlContext && (bool || getExitDir(paramCharSequence) == 1)) ? LRM_STRING : ((this.mIsRtlContext && (!bool || getExitDir(paramCharSequence) == -1)) ? RLM_STRING : "");
  }
  
  private String markBefore(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    return (!this.mIsRtlContext && (bool || getEntryDir(paramCharSequence) == 1)) ? LRM_STRING : ((this.mIsRtlContext && (!bool || getEntryDir(paramCharSequence) == -1)) ? RLM_STRING : "");
  }
  
  public boolean getStereoReset() {
    return ((this.mFlags & 0x2) != 0);
  }
  
  public boolean isRtl(CharSequence paramCharSequence) {
    return this.mDefaultTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
  }
  
  public boolean isRtl(String paramString) {
    return isRtl(paramString);
  }
  
  public boolean isRtlContext() {
    return this.mIsRtlContext;
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence) {
    return unicodeWrap(paramCharSequence, this.mDefaultTextDirectionHeuristicCompat, true);
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    return unicodeWrap(paramCharSequence, paramTextDirectionHeuristicCompat, true);
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat, boolean paramBoolean) {
    if (paramCharSequence == null)
      return null; 
    boolean bool = paramTextDirectionHeuristicCompat.isRtl(paramCharSequence, 0, paramCharSequence.length());
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    if (getStereoReset() && paramBoolean) {
      if (bool) {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.RTL;
      } else {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.LTR;
      } 
      spannableStringBuilder.append(markBefore(paramCharSequence, paramTextDirectionHeuristicCompat));
    } 
    if (bool != this.mIsRtlContext) {
      char c;
      if (bool) {
        c = '‫';
      } else {
        c = '‪';
      } 
      spannableStringBuilder.append(c);
      spannableStringBuilder.append(paramCharSequence);
      spannableStringBuilder.append('‬');
    } else {
      spannableStringBuilder.append(paramCharSequence);
    } 
    if (paramBoolean) {
      if (bool) {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.RTL;
      } else {
        paramTextDirectionHeuristicCompat = TextDirectionHeuristicsCompat.LTR;
      } 
      spannableStringBuilder.append(markAfter(paramCharSequence, paramTextDirectionHeuristicCompat));
    } 
    return (CharSequence)spannableStringBuilder;
  }
  
  public CharSequence unicodeWrap(CharSequence paramCharSequence, boolean paramBoolean) {
    return unicodeWrap(paramCharSequence, this.mDefaultTextDirectionHeuristicCompat, paramBoolean);
  }
  
  public String unicodeWrap(String paramString) {
    return unicodeWrap(paramString, this.mDefaultTextDirectionHeuristicCompat, true);
  }
  
  public String unicodeWrap(String paramString, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat) {
    return unicodeWrap(paramString, paramTextDirectionHeuristicCompat, true);
  }
  
  public String unicodeWrap(String paramString, TextDirectionHeuristicCompat paramTextDirectionHeuristicCompat, boolean paramBoolean) {
    return (paramString == null) ? null : unicodeWrap(paramString, paramTextDirectionHeuristicCompat, paramBoolean).toString();
  }
  
  public String unicodeWrap(String paramString, boolean paramBoolean) {
    return unicodeWrap(paramString, this.mDefaultTextDirectionHeuristicCompat, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\text\BidiFormatter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */