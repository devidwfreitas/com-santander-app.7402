import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class esn extends esx {
  private static final Pattern a = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");
  
  private static final long[] b = new long[] { 604800000L, 86400000L, 3600000L, 60000L, 1000L };
  
  private static final Pattern c = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");
  
  private final String d;
  
  private final Date e;
  
  private final boolean f;
  
  private final Date g;
  
  private final boolean h;
  
  private final String i;
  
  private final String j;
  
  private final String[] k;
  
  private final String l;
  
  private final double m;
  
  private final double n;
  
  public esn(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String[] paramArrayOfString, String paramString7, double paramDouble1, double paramDouble2) {
    // Byte code:
    //   0: aload_0
    //   1: getstatic esy.CALENDAR : Lesy;
    //   4: invokespecial <init> : (Lesy;)V
    //   7: aload_0
    //   8: aload_1
    //   9: putfield d : Ljava/lang/String;
    //   12: aload_0
    //   13: aload_2
    //   14: invokestatic a : (Ljava/lang/String;)Ljava/util/Date;
    //   17: putfield e : Ljava/util/Date;
    //   20: aload_3
    //   21: ifnonnull -> 156
    //   24: aload #4
    //   26: invokestatic a : (Ljava/lang/CharSequence;)J
    //   29: lstore #13
    //   31: lload #13
    //   33: lconst_0
    //   34: lcmp
    //   35: ifge -> 135
    //   38: aconst_null
    //   39: astore_1
    //   40: aload_0
    //   41: aload_1
    //   42: putfield g : Ljava/util/Date;
    //   45: aload_2
    //   46: invokevirtual length : ()I
    //   49: bipush #8
    //   51: if_icmpne -> 180
    //   54: iconst_1
    //   55: istore #15
    //   57: aload_0
    //   58: iload #15
    //   60: putfield f : Z
    //   63: aload_3
    //   64: ifnull -> 186
    //   67: aload_3
    //   68: invokevirtual length : ()I
    //   71: bipush #8
    //   73: if_icmpne -> 186
    //   76: iconst_1
    //   77: istore #15
    //   79: aload_0
    //   80: iload #15
    //   82: putfield h : Z
    //   85: aload_0
    //   86: aload #5
    //   88: putfield i : Ljava/lang/String;
    //   91: aload_0
    //   92: aload #6
    //   94: putfield j : Ljava/lang/String;
    //   97: aload_0
    //   98: aload #7
    //   100: putfield k : [Ljava/lang/String;
    //   103: aload_0
    //   104: aload #8
    //   106: putfield l : Ljava/lang/String;
    //   109: aload_0
    //   110: dload #9
    //   112: putfield m : D
    //   115: aload_0
    //   116: dload #11
    //   118: putfield n : D
    //   121: return
    //   122: astore_1
    //   123: new java/lang/IllegalArgumentException
    //   126: dup
    //   127: aload_1
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: invokespecial <init> : (Ljava/lang/String;)V
    //   134: athrow
    //   135: new java/util/Date
    //   138: dup
    //   139: lload #13
    //   141: aload_0
    //   142: getfield e : Ljava/util/Date;
    //   145: invokevirtual getTime : ()J
    //   148: ladd
    //   149: invokespecial <init> : (J)V
    //   152: astore_1
    //   153: goto -> 40
    //   156: aload_0
    //   157: aload_3
    //   158: invokestatic a : (Ljava/lang/String;)Ljava/util/Date;
    //   161: putfield g : Ljava/util/Date;
    //   164: goto -> 45
    //   167: astore_1
    //   168: new java/lang/IllegalArgumentException
    //   171: dup
    //   172: aload_1
    //   173: invokevirtual toString : ()Ljava/lang/String;
    //   176: invokespecial <init> : (Ljava/lang/String;)V
    //   179: athrow
    //   180: iconst_0
    //   181: istore #15
    //   183: goto -> 57
    //   186: iconst_0
    //   187: istore #15
    //   189: goto -> 79
    // Exception table:
    //   from	to	target	type
    //   12	20	122	java/text/ParseException
    //   156	164	167	java/text/ParseException
  }
  
  private static long a(CharSequence paramCharSequence) {
    long l = -1L;
    if (paramCharSequence != null) {
      Matcher matcher = a.matcher(paramCharSequence);
      if (matcher.matches()) {
        long l1 = 0L;
        int i = 0;
        while (true) {
          l = l1;
          if (i < b.length) {
            String str = matcher.group(i + 1);
            l = l1;
            if (str != null) {
              l = b[i];
              l = l1 + Integer.parseInt(str) * l;
            } 
            i++;
            l1 = l;
            continue;
          } 
          return l;
        } 
      } 
    } 
    return l;
  }
  
  private static String a(boolean paramBoolean, Date paramDate) {
    if (paramDate == null)
      return null; 
    if (paramBoolean) {
      DateFormat dateFormat1 = DateFormat.getDateInstance(2);
      return dateFormat1.format(paramDate);
    } 
    DateFormat dateFormat = DateFormat.getDateTimeInstance(2, 2);
    return dateFormat.format(paramDate);
  }
  
  private static Date a(String paramString) {
    Date date;
    if (!c.matcher(paramString).matches())
      throw new ParseException(paramString, 0); 
    if (paramString.length() == 8)
      return l().parse(paramString); 
    if (paramString.length() == 16 && paramString.charAt(15) == 'Z') {
      date = m().parse(paramString.substring(0, 15));
      GregorianCalendar gregorianCalendar = new GregorianCalendar();
      long l = date.getTime() + gregorianCalendar.get(15);
      gregorianCalendar.setTime(new Date(l));
      return new Date(l + gregorianCalendar.get(16));
    } 
    return m().parse((String)date);
  }
  
  private static DateFormat l() {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return simpleDateFormat;
  }
  
  private static DateFormat m() {
    return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
  }
  
  public String a() {
    return this.d;
  }
  
  public Date b() {
    return this.e;
  }
  
  public boolean c() {
    return this.f;
  }
  
  public Date d() {
    return this.g;
  }
  
  public boolean e() {
    return this.h;
  }
  
  public String f() {
    return this.i;
  }
  
  public String g() {
    return this.j;
  }
  
  public String[] h() {
    return this.k;
  }
  
  public String i() {
    return this.l;
  }
  
  public double j() {
    return this.m;
  }
  
  public double k() {
    return this.n;
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(100);
    a(this.d, stringBuilder);
    a(a(this.f, this.e), stringBuilder);
    a(a(this.h, this.g), stringBuilder);
    a(this.i, stringBuilder);
    a(this.j, stringBuilder);
    a(this.k, stringBuilder);
    a(this.l, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\esn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */