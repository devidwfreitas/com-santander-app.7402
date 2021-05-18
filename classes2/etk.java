import java.util.regex.Pattern;

public final class etk extends etb {
  private static final Pattern a = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");
  
  private static final Pattern b = Pattern.compile("([a-zA-Z0-9\\-]+\\.)+[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");
  
  static boolean a(String paramString) {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: ldc ' '
    //   5: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   8: ifeq -> 15
    //   11: iconst_0
    //   12: istore_1
    //   13: iload_1
    //   14: ireturn
    //   15: getstatic etk.a : Ljava/util/regex/Pattern;
    //   18: aload_0
    //   19: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   22: astore_3
    //   23: aload_3
    //   24: invokevirtual find : ()Z
    //   27: ifeq -> 39
    //   30: iload_2
    //   31: istore_1
    //   32: aload_3
    //   33: invokevirtual start : ()I
    //   36: ifeq -> 13
    //   39: getstatic etk.b : Ljava/util/regex/Pattern;
    //   42: aload_0
    //   43: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   46: astore_0
    //   47: aload_0
    //   48: invokevirtual find : ()Z
    //   51: ifeq -> 63
    //   54: iload_2
    //   55: istore_1
    //   56: aload_0
    //   57: invokevirtual start : ()I
    //   60: ifeq -> 13
    //   63: iconst_0
    //   64: ireturn
  }
  
  public etj a(eqm parameqm) {
    String str = c(parameqm);
    if (str.startsWith("URL:") || str.startsWith("URI:"))
      return new etj(str.substring(4).trim(), null); 
    str = str.trim();
    return a(str) ? new etj(str, null) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */