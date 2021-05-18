import android.support.annotation.NonNull;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import java.text.Normalizer;
import java.text.NumberFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class aat {
  private static final String a = "{0}";
  
  private static final UnderlineSpan b = new UnderlineSpan();
  
  private static final ForegroundColorSpan c = new ForegroundColorSpan(-16777216);
  
  private static final StyleSpan d = new StyleSpan(1);
  
  public static String a(acc paramacc) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual c : ()Ljava/lang/String;
    //   4: astore_2
    //   5: iconst_m1
    //   6: istore_1
    //   7: aload_2
    //   8: invokevirtual hashCode : ()I
    //   11: lookupswitch default -> 84, -1981032462 -> 237, -1587854955 -> 181, -388091655 -> 195, 2567702 -> 223, 39242486 -> 209, 1269465160 -> 252, 2026373756 -> 167, 2026790622 -> 153
    //   84: iload_1
    //   85: tableswitch default -> 132, 0 -> 267, 1 -> 278, 2 -> 289, 3 -> 300, 4 -> 311, 5 -> 322, 6 -> 333, 7 -> 344
    //   132: aload_0
    //   133: invokevirtual b : ()Ljava/lang/String;
    //   136: astore_2
    //   137: aload_2
    //   138: astore_3
    //   139: aload_2
    //   140: invokevirtual isEmpty : ()Z
    //   143: ifeq -> 151
    //   146: aload_0
    //   147: invokevirtual b : ()Ljava/lang/String;
    //   150: astore_3
    //   151: aload_3
    //   152: areturn
    //   153: aload_2
    //   154: ldc 'DTOPER'
    //   156: invokevirtual equals : (Ljava/lang/Object;)Z
    //   159: ifeq -> 84
    //   162: iconst_0
    //   163: istore_1
    //   164: goto -> 84
    //   167: aload_2
    //   168: ldc 'DTAPLI'
    //   170: invokevirtual equals : (Ljava/lang/Object;)Z
    //   173: ifeq -> 84
    //   176: iconst_1
    //   177: istore_1
    //   178: goto -> 84
    //   181: aload_2
    //   182: ldc 'DTVENCI'
    //   184: invokevirtual equals : (Ljava/lang/Object;)Z
    //   187: ifeq -> 84
    //   190: iconst_2
    //   191: istore_1
    //   192: goto -> 84
    //   195: aload_2
    //   196: ldc 'OUTRASO'
    //   198: invokevirtual equals : (Ljava/lang/Object;)Z
    //   201: ifeq -> 84
    //   204: iconst_3
    //   205: istore_1
    //   206: goto -> 84
    //   209: aload_2
    //   210: ldc 'PERINDX'
    //   212: invokevirtual equals : (Ljava/lang/Object;)Z
    //   215: ifeq -> 84
    //   218: iconst_4
    //   219: istore_1
    //   220: goto -> 84
    //   223: aload_2
    //   224: ldc 'TAXA'
    //   226: invokevirtual equals : (Ljava/lang/Object;)Z
    //   229: ifeq -> 84
    //   232: iconst_5
    //   233: istore_1
    //   234: goto -> 84
    //   237: aload_2
    //   238: ldc 'NUMDOC'
    //   240: invokevirtual equals : (Ljava/lang/Object;)Z
    //   243: ifeq -> 84
    //   246: bipush #6
    //   248: istore_1
    //   249: goto -> 84
    //   252: aload_2
    //   253: ldc 'VLRAPLI'
    //   255: invokevirtual equals : (Ljava/lang/Object;)Z
    //   258: ifeq -> 84
    //   261: bipush #7
    //   263: istore_1
    //   264: goto -> 84
    //   267: aload_0
    //   268: invokevirtual b : ()Ljava/lang/String;
    //   271: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   274: astore_2
    //   275: goto -> 137
    //   278: aload_0
    //   279: invokevirtual b : ()Ljava/lang/String;
    //   282: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   285: astore_2
    //   286: goto -> 137
    //   289: aload_0
    //   290: invokevirtual b : ()Ljava/lang/String;
    //   293: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   296: astore_2
    //   297: goto -> 137
    //   300: aload_0
    //   301: invokevirtual b : ()Ljava/lang/String;
    //   304: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   307: astore_2
    //   308: goto -> 137
    //   311: aload_0
    //   312: invokevirtual b : ()Ljava/lang/String;
    //   315: invokestatic k : (Ljava/lang/String;)Ljava/lang/String;
    //   318: astore_2
    //   319: goto -> 137
    //   322: aload_0
    //   323: invokevirtual b : ()Ljava/lang/String;
    //   326: invokestatic k : (Ljava/lang/String;)Ljava/lang/String;
    //   329: astore_2
    //   330: goto -> 137
    //   333: aload_0
    //   334: invokevirtual b : ()Ljava/lang/String;
    //   337: invokestatic l : (Ljava/lang/String;)Ljava/lang/String;
    //   340: astore_2
    //   341: goto -> 137
    //   344: new java/lang/StringBuilder
    //   347: dup
    //   348: invokespecial <init> : ()V
    //   351: ldc '000'
    //   353: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: aload_0
    //   357: invokevirtual b : ()Ljava/lang/String;
    //   360: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: invokevirtual toString : ()Ljava/lang/String;
    //   366: astore_2
    //   367: new java/lang/StringBuilder
    //   370: dup
    //   371: invokespecial <init> : ()V
    //   374: aload_2
    //   375: iconst_0
    //   376: aload_2
    //   377: invokevirtual length : ()I
    //   380: iconst_2
    //   381: isub
    //   382: invokevirtual substring : (II)Ljava/lang/String;
    //   385: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: ldc '.'
    //   390: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: aload_2
    //   394: aload_2
    //   395: invokevirtual length : ()I
    //   398: iconst_2
    //   399: isub
    //   400: invokevirtual substring : (I)Ljava/lang/String;
    //   403: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: invokevirtual toString : ()Ljava/lang/String;
    //   409: invokestatic e : (Ljava/lang/String;)Ljava/lang/String;
    //   412: astore_2
    //   413: goto -> 137
  }
  
  public static String a(Double paramDouble) {
    try {
      return NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(paramDouble).replace("R$", "R$ ");
    } catch (Exception exception) {
      Log.d("Error", exception.toString());
      return "";
    } 
  }
  
  public static String a(String paramString) {
    try {
      return a(Double.valueOf(paramString.replace(",", ".")));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  @NonNull
  public static String a(String paramString1, String paramString2) {
    try {
      NumberFormat numberFormat = NumberFormat.getIntegerInstance();
      numberFormat.setMinimumIntegerDigits(4);
      numberFormat.setMaximumIntegerDigits(4);
      numberFormat.setGroupingUsed(false);
      paramString1 = numberFormat.format(Integer.parseInt(paramString1));
      numberFormat = NumberFormat.getInstance();
      numberFormat.setMinimumIntegerDigits(9);
      numberFormat.setMaximumIntegerDigits(9);
      numberFormat.setGroupingUsed(false);
      paramString2 = numberFormat.format(Integer.parseInt(paramString2));
      return paramString1 + "/" + paramString2.substring(0, 2) + "." + paramString2.substring(2, 8) + "." + paramString2.substring(8, 9);
    } catch (Exception exception) {
      Log.d("Formatter", exception.toString());
      return "";
    } 
  }
  
  @NonNull
  public static String a(Calendar paramCalendar) {
    try {
      StringBuilder stringBuilder = new StringBuilder();
      String str = "0" + paramCalendar.get(5);
      stringBuilder.append(str.substring(str.length() - 2, str.length()));
      stringBuilder.append("/");
      str = "0" + (paramCalendar.get(2) + 1);
      stringBuilder.append(str.substring(str.length() - 2, str.length()));
      stringBuilder.append("/");
      stringBuilder.append(paramCalendar.get(1));
      return stringBuilder.toString();
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static SpannableStringBuilder b(String paramString1, String paramString2) {
    Matcher matcher = Pattern.compile(paramString2).matcher(paramString1);
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(paramString1);
    while (matcher.find()) {
      spannableStringBuilder.setSpan(b, matcher.start(), matcher.end(), 33);
      spannableStringBuilder.setSpan(c, matcher.start(), matcher.end(), 33);
      spannableStringBuilder.setSpan(d, matcher.start(), matcher.end(), 33);
    } 
    return spannableStringBuilder;
  }
  
  public static String b(Double paramDouble) {
    try {
      return a(paramDouble).replace("R$", "").trim();
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String b(String paramString) {
    return a(c(paramString));
  }
  
  public static SpannableStringBuilder c(String paramString1, String paramString2) {
    Matcher matcher = Pattern.compile(paramString2).matcher(paramString1);
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(paramString1);
    while (matcher.find())
      spannableStringBuilder.setSpan(d, matcher.start(), matcher.end(), 33); 
    return spannableStringBuilder;
  }
  
  public static Double c(String paramString) {
    try {
      String str = paramString.substring(paramString.length() - 1, paramString.length());
      Double double_2 = Double.valueOf(Double.valueOf(paramString.replace(str, "")).doubleValue() / 100.0D);
      Double double_1 = double_2;
      if (str.equals("-")) {
        double d = double_2.doubleValue();
        double_1 = Double.valueOf(d * -1.0D);
      } 
      return double_1;
    } catch (Exception exception) {
      return Double.valueOf(0.0D);
    } 
  }
  
  public static String c(Double paramDouble) {
    try {
      NumberFormat numberFormat = NumberFormat.getPercentInstance();
      numberFormat.setMinimumFractionDigits(2);
      numberFormat.setMaximumFractionDigits(2);
      return numberFormat.format(paramDouble.doubleValue() / 100.0D);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static SpannableStringBuilder d(String paramString1, String paramString2) {
    String str = null;
    try {
      SpannableStringBuilder spannableStringBuilder;
      if (paramString1.indexOf("{0}") > 0) {
        int i = paramString1.indexOf("{0}");
        str = paramString1.substring(0, i);
        int j = str.length() + paramString2.length();
        paramString1 = paramString1.substring(paramString1.indexOf("{0}") + "{0}".length(), paramString1.length());
        spannableStringBuilder = new SpannableStringBuilder(str + paramString2 + paramString1);
        spannableStringBuilder.setSpan(b, i, j, 33);
        spannableStringBuilder.setSpan(c, i, j, 33);
        spannableStringBuilder.setSpan(d, i, j, 33);
      } 
      return spannableStringBuilder;
    } catch (Exception exception) {
      return new SpannableStringBuilder("");
    } 
  }
  
  public static boolean d(String paramString) {
    boolean bool = false;
    try {
      int i = Integer.valueOf(paramString).intValue();
      if (i == 0)
        bool = true; 
      return bool;
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public static String e(String paramString) {
    try {
      return b(Double.valueOf(paramString));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  @NonNull
  public static String f(@NonNull String paramString) {
    try {
      Calendar calendar = Calendar.getInstance();
      String[] arrayOfString = paramString.split("-");
      calendar.set(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[1]) - 1, Integer.parseInt(arrayOfString[2]));
      return a(calendar);
    } catch (Exception exception) {
      Log.d("Formater", "getFormatedDate: " + exception.toString());
      return "";
    } 
  }
  
  @NonNull
  public static String g(@NonNull String paramString) {
    try {
      null = paramString.substring(0, 2);
      String str1 = paramString.substring(2, 4);
      String str2 = paramString.substring(paramString.length() - 4);
      return str2 + "-" + str1 + "-" + null;
    } catch (Exception exception) {
      Log.d("Formater", "getFormatedDate: " + exception.toString());
      return paramString;
    } 
  }
  
  @NonNull
  public static String h(String paramString) {
    String str = paramString;
    if (paramString != null)
      str = Normalizer.normalize(paramString, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", ""); 
    return str;
  }
  
  @NonNull
  public static String i(String paramString) {
    if (paramString == null || paramString.isEmpty())
      return "Nova aplicação"; 
    if (paramString.contains("/"))
      return a(paramString.split("/")[0], paramString.split("/")[1]); 
    String str = paramString;
    try {
      if (Integer.valueOf(paramString.replaceAll("[^1-9]", "")).intValue() == 0)
        return "Nova aplicação"; 
    } catch (Exception exception) {
      Log.d("Formatter", exception.toString());
      return paramString;
    } 
    return (String)exception;
  }
  
  public static String j(String paramString) {
    if (paramString.isEmpty() || paramString.equalsIgnoreCase("0.00"))
      return ""; 
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setGroupingUsed(false);
    numberFormat.setMinimumIntegerDigits(13);
    numberFormat.setMaximumIntegerDigits(13);
    numberFormat.setMinimumFractionDigits(2);
    numberFormat.setMaximumFractionDigits(2);
    return numberFormat.format(Double.parseDouble(paramString)).replaceAll("[,.]", "");
  }
  
  public static String k(String paramString) {
    try {
      return paramString.substring(0, 3) + "," + paramString.substring(3);
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String l(String paramString) {
    try {
      paramString = ("00000000000" + paramString).substring(11);
      Matcher matcher = Pattern.compile("(\\d{3})(\\d{3})(\\d{3})(\\d{2})").matcher(paramString);
      if (matcher.matches())
        paramString = matcher.replaceAll("$1.$2.$3-$4"); 
      return paramString;
    } catch (Exception exception) {
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */