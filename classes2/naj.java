import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Locale;

public class naj {
  public static String A(String paramString) {
    for (int i = 0; i < paramString.length(); i++) {
      if (paramString.charAt(i) != '0')
        return paramString.substring(i); 
    } 
    return "";
  }
  
  public static String B(String paramString) {
    String str;
    try {
      String str1 = paramString.replace("+", "").replace("-", "").replace(".", "").replace(",", "");
      if (str1.length() > 11) {
        while (true) {
          paramString = str1;
          if (str1.length() != 11) {
            str1 = str1.substring(1, str1.length());
            continue;
          } 
          break;
        } 
      } else {
        StringBuffer stringBuffer;
        paramString = str1;
        if (str1.length() < 11) {
          stringBuffer = new StringBuffer();
          stringBuffer.append(str1);
          while (stringBuffer.length() != 11)
            stringBuffer.insert(0, "0"); 
        } else {
          return (String)stringBuffer;
        } 
        return stringBuffer.toString();
      } 
    } catch (Exception exception) {
      str = "";
    } 
    return str;
  }
  
  public static String C(String paramString) {
    return s(paramString).replace("-", "").replace("R$ ", "");
  }
  
  public static String D(String paramString) {
    return paramString.substring(2, paramString.length()).replace(" ", "");
  }
  
  public static String E(String paramString) {
    try {
      return "Final " + paramString.substring(paramString.length() - 4);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String F(String paramString) {
    try {
      float f = Float.parseFloat(paramString) / 10000.0F;
      return String.format("%.4f", new Object[] { Float.valueOf(f) }) + "%";
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String G(String paramString) {
    try {
      paramString = paramString.replace(".", ",");
      return paramString + "%";
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String H(String paramString) {
    return paramString.replaceAll("\\.", "").replaceAll(",", "");
  }
  
  public static String I(String paramString) {
    String str = "";
    for (int i = 0;; i++) {
      try {
        if (i < paramString.length()) {
          if (i == 0) {
            String str1 = str + paramString.substring(i, i + 1).toUpperCase();
            str = str1;
          } else {
            String str1 = str + paramString.substring(i, i + 1).toLowerCase();
            str = str1;
          } 
        } else {
          return str;
        } 
      } catch (IndexOutOfBoundsException indexOutOfBoundsException) {
        return str;
      } 
    } 
  }
  
  public static String J(String paramString) {
    return paramString.replace("(", "").replace(")", "").replace("-", "").replace(" ", "");
  }
  
  public static String K(String paramString) {
    try {
      float f = Float.parseFloat(paramString);
      paramString = "";
      if (f > 0.0F)
        paramString = "+"; 
      return String.valueOf(paramString + f + "%").replace(".", ",");
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String L(String paramString) {
    String str = paramString;
    try {
      if (paramString.length() == 4)
        str = paramString.substring(0, 2) + ":" + paramString.substring(2, 4); 
      return str;
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String M(String paramString) {
    paramString = N(paramString);
    if (paramString.contains("-")) {
      paramString = paramString.replace("-", "");
      return "- R$ " + paramString;
    } 
    return "R$ " + paramString;
  }
  
  public static String N(String paramString) {
    if (!paramString.contains("(")) {
      String str = paramString;
      return paramString.contains(")") ? ("-" + paramString.replace("(", "").replace(")", "")) : str;
    } 
    return "-" + paramString.replace("(", "").replace(")", "");
  }
  
  public static BigDecimal O(String paramString) {
    return new BigDecimal(N(paramString).replace(".", "").replace(",", ".").trim());
  }
  
  public static String P(String paramString) {
    try {
      if (paramString.contains(",") || paramString.contains(".")) {
        String str = paramString;
        if (paramString.contains(","))
          str = paramString.replace(".", ""); 
        return str.replace(",", ".").replace("R$", "").replace(" ", "");
      } 
      StringBuilder stringBuilder = new StringBuilder(paramString);
      return stringBuilder.insert(stringBuilder.length() - 2, '.').toString().replaceFirst("^0*", "");
    } catch (Exception exception) {
      return exception.getMessage();
    } 
  }
  
  public static String Q(String paramString) {
    return "R$ " + paramString;
  }
  
  public static String a(double paramDouble) {
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setMinimumFractionDigits(2);
    numberFormat.setMaximumFractionDigits(2);
    numberFormat.format(paramDouble);
    String str = (new DecimalFormat("###,###,##0.00", new DecimalFormatSymbols(Locale.ITALY))).format(paramDouble);
    return str.subSequence(0, 1).equals("-") ? ("R$ -" + str.subSequence(1, str.length())) : ("R$" + str);
  }
  
  public static String a(double paramDouble, String paramString) {
    if (paramString == null || paramString.equals("R$"));
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setMinimumFractionDigits(2);
    numberFormat.setMaximumFractionDigits(2);
    numberFormat.format(paramDouble);
    String str = (new DecimalFormat("###,###,##0.00", new DecimalFormatSymbols(Locale.ITALY))).format(paramDouble);
    return str.subSequence(0, 1).equals("-") ? (paramString + " -" + str.subSequence(1, str.length())) : (paramString + str);
  }
  
  public static String a(String paramString) {
    return paramString.replace(",", "").replace(".", "").replace("R$", "").replace(" ", "");
  }
  
  public static String a(String paramString, int paramInt) {
    String str = paramString;
    try {
      if (paramString.length() > 0) {
        str = paramString;
        if (paramString.length() < paramInt) {
          int i = paramString.length();
          while (true) {
            str = paramString;
            if (i < paramInt) {
              paramString = "0" + paramString;
              i++;
              continue;
            } 
            break;
          } 
        } 
      } 
    } catch (Exception exception) {
      String str1 = "0";
      str = str1;
      if ("0".length() > 0) {
        str = str1;
        if ("0".length() < paramInt) {
          int i = "0".length();
          while (true) {
            str = str1;
            if (i < paramInt) {
              str1 = "0" + str1;
              i++;
              continue;
            } 
            break;
          } 
        } 
      } 
    } 
    return str;
  }
  
  public static String a(String paramString1, String paramString2) {
    try {
      return a(y(p(paramString1.replaceAll(",", "."))), paramString2);
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public static String a(String paramString1, String paramString2, String paramString3) {
    String str = paramString1;
    try {
      if (paramString1.contains(".")) {
        str = paramString1;
        if (paramString1.length() - paramString1.indexOf(".") < 3)
          str = paramString1 + "0"; 
      } 
      return b(str.replaceAll("\\.", ""), paramString2, paramString3);
    } catch (Exception exception) {
      return b("000", paramString2, paramString3);
    } 
  }
  
  public static String a(String paramString, boolean paramBoolean) {
    if (paramString == null || paramString.length() == 0)
      return "R$" + " 0,00000"; 
    double d = Double.parseDouble(paramString);
    String str = (new DecimalFormat("###,###,##0.00000", new DecimalFormatSymbols(new Locale("pt", "BR")))).format(d);
    paramString = str;
    return paramBoolean ? ("R$" + " " + str) : paramString;
  }
  
  public static String a(BigDecimal paramBigDecimal) {
    DecimalFormat decimalFormat = new DecimalFormat("#,##0.00", new DecimalFormatSymbols(new Locale("pt", "BR")));
    return "R$ " + decimalFormat.format(paramBigDecimal);
  }
  
  public static String b(double paramDouble) {
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setMinimumFractionDigits(2);
    numberFormat.setMaximumFractionDigits(2);
    numberFormat.format(paramDouble);
    String str = (new DecimalFormat("###,###,##0.00", new DecimalFormatSymbols(Locale.ITALY))).format(paramDouble);
    return str.subSequence(0, 1).equals("-") ? ("R$" + str.subSequence(1, str.length())) : ("R$" + str);
  }
  
  public static String b(String paramString) {
    String str1;
    String str2 = paramString;
    if (paramString.isEmpty())
      str2 = "0"; 
    paramString = N(str2);
    if (!paramString.contains(",") && paramString.contains(".")) {
      paramString.replace(",", ".");
    } else {
      paramString = paramString.replace(".", "").replace(",", ".");
    } 
    str2 = paramString.replace("R", "").replace("$", "").replace("(", "").replace(")", "").trim();
    paramString = str2;
    if (!"".equals(str2)) {
      BigDecimal bigDecimal = new BigDecimal(str2);
      str1 = NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(bigDecimal).replace("$", "$ ").replace("-", "- ");
    } 
    return str1;
  }
  
  public static String b(String paramString1, String paramString2) {
    return b(paramString1, paramString2, "###,###,##0.00");
  }
  
  public static String b(String paramString1, String paramString2, String paramString3) {
    String str;
    if (paramString2 != null && paramString2.equals("false")) {
      paramString2 = "US$";
    } else {
      paramString2 = "R$";
    } 
    if (paramString1 == null || paramString1.length() == 0)
      return paramString2 + " 0,00"; 
    char c = paramString1.charAt(paramString1.length() - 1);
    if (c == '-') {
      boolean bool = true;
    } else {
      boolean bool = false;
    } 
    if (c == '+' || c == '-') {
      c = '\001';
    } else {
      c = Character.MIN_VALUE;
    } 
    if (c != '\000') {
      try {
        double d1 = Double.parseDouble(paramString1.substring(0, paramString1.length() - 1));
        double d2 = d1 / 100.0D;
        d1 = d2;
      } catch (NumberFormatException numberFormatException) {
        double d = 0.0D;
        str = (new DecimalFormat(paramString3, new DecimalFormatSymbols(Locale.ITALY))).format(d);
        if (str.subSequence(0, 1).equals("-"))
          return paramString2 + " -" + str.subSequence(1, str.length()); 
      } 
    } else {
      double d1 = Double.parseDouble(str);
      double d2 = d1 / 100.0D;
      d1 = d2;
    } 
    return paramString2 + " " + str;
  }
  
  public static float c(String paramString) {
    String str = paramString;
    if (paramString.length() != 3) {
      str = paramString;
      if (paramString.contains(","))
        str = paramString.replace(".", ""); 
    } 
    return Float.parseFloat(str.replace(",", "."));
  }
  
  public static String c(double paramDouble) {
    NumberFormat numberFormat = NumberFormat.getInstance();
    numberFormat.setMinimumFractionDigits(2);
    numberFormat.setMaximumFractionDigits(2);
    numberFormat.format(paramDouble);
    return (new DecimalFormat("########0,00")).format(paramDouble);
  }
  
  public static String c(String paramString1, String paramString2, String paramString3) {
    String str;
    boolean bool;
    if (paramString2 != null && paramString2.equals("true")) {
      bool = true;
    } else {
      bool = false;
    } 
    if (!bool) {
      paramString2 = "US$";
    } else {
      paramString2 = "R$";
    } 
    if (paramString1 == null || paramString1.length() == 0)
      return !bool ? (paramString2 + " 0.0000") : (paramString2 + " 0,0000"); 
    char c = paramString1.charAt(paramString1.length() - 1);
    if (c == '-') {
      boolean bool1 = true;
    } else {
      boolean bool1 = false;
    } 
    if (c == '+' || c == '-') {
      c = '\001';
    } else {
      c = Character.MIN_VALUE;
    } 
    if (c != '\000') {
      try {
        double d1 = Double.parseDouble(paramString1.substring(0, paramString1.length() - 1));
        double d2 = d1 / 10000.0D;
        d1 = d2;
      } catch (NumberFormatException numberFormatException) {
        Locale locale;
        double d = 0.0D;
        if (bool) {
          locale = new Locale("pt", "BR");
        } else {
          locale = new Locale("en", "US");
        } 
        str = (new DecimalFormat(paramString3, new DecimalFormatSymbols(locale))).format(d);
        if (str.subSequence(0, 1).equals("-"))
          return paramString2 + " -" + str.subSequence(1, str.length()); 
      } 
    } else {
      double d1 = Double.parseDouble(str);
      double d2 = d1 / 10000.0D;
      d1 = d2;
    } 
    return paramString2 + " " + str;
  }
  
  public static boolean c(String paramString1, String paramString2) {
    double d1 = y(paramString1);
    paramString1 = paramString2;
    if (paramString2.length() > 0)
      paramString1 = paramString2.replaceAll("[\\.,]", ""); 
    double d2 = y(paramString1);
    return (Double.valueOf(d1).doubleValue() > Double.valueOf(d2).doubleValue());
  }
  
  public static double d(String paramString) {
    String str = paramString;
    if (paramString.length() != 3) {
      str = paramString;
      if (paramString.contains(","))
        str = paramString.replace(".", ""); 
    } 
    return Double.parseDouble(str.replace(",", "."));
  }
  
  public static float e(String paramString) {
    return (new Float(paramString)).floatValue();
  }
  
  public static String f(String paramString) {
    String str = paramString;
    try {
      if (paramString.contains(".")) {
        str = paramString;
        if (paramString.length() - paramString.indexOf(".") < 3)
          str = paramString + "0"; 
      } 
      return s(str.replaceAll("\\.", ""));
    } catch (Exception exception) {
      return s("000");
    } 
  }
  
  public static String g(String paramString) {
    return k(paramString);
  }
  
  public static String h(String paramString) {
    try {
      return b(Double.parseDouble(paramString));
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public static String i(String paramString) {
    try {
      if (paramString.contains(",") && paramString.contains(".")) {
        paramString = paramString.replaceAll("\\.", "").replaceAll(",", ".");
        return a(Double.parseDouble(p(paramString)));
      } 
      paramString = paramString.replaceAll(",", ".");
      return a(Double.parseDouble(p(paramString)));
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public static String j(String paramString) {
    try {
      return b(Double.parseDouble(paramString));
    } catch (Exception exception) {
      return "R$0.00";
    } 
  }
  
  public static String k(String paramString) {
    try {
      return a(Double.parseDouble(paramString));
    } catch (Exception exception) {
      return "R$0.00";
    } 
  }
  
  public static String l(String paramString) {
    try {
      return paramString.replaceAll("[,]", "").replaceAll("[\\.]", "");
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public static String m(String paramString) {
    try {
      return paramString.replaceAll("[\\.]", "").replace(",", ".");
    } catch (Exception exception) {
      return "0.00";
    } 
  }
  
  public static String n(String paramString) {
    try {
      return a(Double.parseDouble(paramString));
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public static String o(String paramString) {
    return f(paramString).substring(3);
  }
  
  public static String p(String paramString) {
    String str = paramString.replaceAll("\\+", "");
    paramString = str;
    if (str.contains("-")) {
      paramString = str.replaceAll("-", "");
      paramString = "-" + paramString;
    } 
    return paramString;
  }
  
  public static String q(String paramString) {
    try {
      float f = Float.valueOf(paramString).floatValue() / 100000.0F;
      return (new DecimalFormat("###,###,##0.00000'%'")).format(Float.valueOf(f));
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public static String r(String paramString) {
    try {
      float f = Float.valueOf(paramString).floatValue() / 10000.0F;
      return (new DecimalFormat("###,###,##0.0000'%'")).format(Float.valueOf(f));
    } catch (Exception exception) {
      return "N/A";
    } 
  }
  
  public static String s(String paramString) {
    return b(paramString, "true");
  }
  
  public static String t(String paramString) {
    byte b = 45;
    paramString = paramString.replaceAll("[\\.,]", "");
    if (paramString.charAt(0) == '-') {
      paramString = paramString.substring(1);
      return paramString + b;
    } 
    b = 43;
    return paramString + b;
  }
  
  public static String u(String paramString) {
    String str = paramString;
    if (paramString.contains(",")) {
      str = paramString;
      if (paramString.length() - paramString.indexOf(",") != 3)
        str = paramString + "0"; 
    } 
    return str.replaceAll("[\\.,]", "");
  }
  
  public static String v(String paramString) {
    if (paramString.contains(".")) {
      String str1 = paramString;
      if (paramString.length() - paramString.indexOf(".") != 3)
        str1 = paramString + "0"; 
      return str1.replaceAll("[\\.,]", "").replaceAll("\\+", "").replaceAll("-", "");
    } 
    String str = paramString;
    if (paramString.contains(",")) {
      str = paramString;
      if (paramString.length() - paramString.indexOf(",") != 3)
        str = paramString + "0"; 
    } 
    return str.replaceAll("[\\.,]", "").replaceAll("\\+", "").replaceAll("-", "");
  }
  
  public static String w(String paramString) {
    if (paramString.contains(".")) {
      String str1 = paramString;
      if (paramString.length() - paramString.indexOf(".") != 3)
        str1 = paramString + "0"; 
      return str1.replaceAll("[\\.,]", "").replaceAll("\\+", "").replaceAll("-", "").substring(2).trim();
    } 
    String str = paramString;
    if (paramString.contains(",")) {
      str = paramString;
      if (paramString.length() - paramString.indexOf(",") != 3)
        str = paramString + "0"; 
    } 
    return str.replaceAll("[\\.,]", "").replaceAll("\\+", "").replaceAll("-", "").substring(2).trim();
  }
  
  public static boolean x(String paramString) {
    return (Double.valueOf(y(paramString)).doubleValue() >= 0.0D);
  }
  
  public static double y(String paramString) {
    // Byte code:
    //   0: dconst_0
    //   1: dstore_1
    //   2: iconst_0
    //   3: istore #8
    //   5: aload_0
    //   6: invokevirtual length : ()I
    //   9: ifne -> 14
    //   12: dload_1
    //   13: dreturn
    //   14: aload_0
    //   15: aload_0
    //   16: invokevirtual length : ()I
    //   19: iconst_1
    //   20: isub
    //   21: invokevirtual charAt : (I)C
    //   24: istore #9
    //   26: iload #9
    //   28: bipush #45
    //   30: if_icmpne -> 109
    //   33: iconst_1
    //   34: istore #7
    //   36: iload #9
    //   38: bipush #43
    //   40: if_icmpeq -> 50
    //   43: iload #9
    //   45: bipush #45
    //   47: if_icmpne -> 53
    //   50: iconst_1
    //   51: istore #8
    //   53: iload #8
    //   55: ifeq -> 96
    //   58: dload_1
    //   59: dstore_3
    //   60: aload_0
    //   61: iconst_0
    //   62: aload_0
    //   63: invokevirtual length : ()I
    //   66: iconst_1
    //   67: isub
    //   68: invokevirtual substring : (II)Ljava/lang/String;
    //   71: invokestatic parseDouble : (Ljava/lang/String;)D
    //   74: dstore_1
    //   75: dload_1
    //   76: dstore_3
    //   77: dload_1
    //   78: ldc2_w 100.0
    //   81: ddiv
    //   82: dstore #5
    //   84: dload #5
    //   86: dstore_1
    //   87: iload #7
    //   89: ifeq -> 12
    //   92: dload #5
    //   94: dneg
    //   95: dreturn
    //   96: dload_1
    //   97: dstore_3
    //   98: aload_0
    //   99: invokestatic parseDouble : (Ljava/lang/String;)D
    //   102: dstore_1
    //   103: goto -> 75
    //   106: astore_0
    //   107: dload_3
    //   108: dreturn
    //   109: iconst_0
    //   110: istore #7
    //   112: goto -> 36
    // Exception table:
    //   from	to	target	type
    //   60	75	106	java/lang/NumberFormatException
    //   77	84	106	java/lang/NumberFormatException
    //   98	103	106	java/lang/NumberFormatException
  }
  
  public static String z(String paramString) {
    try {
      int j = paramString.length();
      StringBuffer stringBuffer = new StringBuffer();
      for (int i = 0; i < 18 - j; i++)
        stringBuffer.append("0"); 
      stringBuffer.append(paramString);
      return stringBuffer.toString();
    } catch (Exception exception) {
      return paramString;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\naj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */