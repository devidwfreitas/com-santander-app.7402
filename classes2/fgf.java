import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Properties;
import java.util.TimeZone;

class fgf {
  private static DecimalFormat a = a();
  
  private static final String b = "SHA1PRNG";
  
  public static int a(Properties paramProperties, String paramString, int paramInt) {
    if (paramProperties != null) {
      Object object = paramProperties.get(paramString);
      if (object instanceof String) {
        String str = (String)paramProperties.get(paramString);
        if (object != null)
          try {
            return Integer.parseInt(str);
          } catch (NumberFormatException numberFormatException) {
            return paramInt;
          }  
      } 
    } 
    return paramInt;
  }
  
  public static String a(double paramDouble) {
    // Byte code:
    //   0: ldc fgf
    //   2: monitorenter
    //   3: getstatic fgf.a : Ljava/text/DecimalFormat;
    //   6: dload_0
    //   7: invokevirtual format : (D)Ljava/lang/String;
    //   10: astore_2
    //   11: ldc fgf
    //   13: monitorexit
    //   14: aload_2
    //   15: areturn
    //   16: astore_2
    //   17: ldc fgf
    //   19: monitorexit
    //   20: aload_2
    //   21: athrow
    // Exception table:
    //   from	to	target	type
    //   3	11	16	finally
  }
  
  public static String a(String paramString) {
    return (paramString != null) ? paramString : "unavailable";
  }
  
  static String a(Date paramDate) {
    TimeZone timeZone = TimeZone.getTimeZone("UTC");
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    simpleDateFormat.setTimeZone(timeZone);
    return simpleDateFormat.format(paramDate);
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    int j = paramArrayOfbyte.length;
    StringBuffer stringBuffer = new StringBuffer(j * 2);
    for (int i = 0; i < j; i++) {
      int k = paramArrayOfbyte[i] & 0xFF;
      if (k < 16)
        stringBuffer.append('0'); 
      stringBuffer.append(Integer.toHexString(k));
    } 
    return stringBuffer.toString().toUpperCase();
  }
  
  private static DecimalFormat a() {
    DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
    decimalFormatSymbols.setDecimalSeparator('.');
    decimalFormatSymbols.setMinusSign('-');
    return new DecimalFormat("###.########;-###", decimalFormatSymbols);
  }
  
  public static boolean a(Properties paramProperties, String paramString, boolean paramBoolean) {
    boolean bool1;
    boolean bool2 = true;
    if (paramProperties == null)
      return paramBoolean; 
    if (paramBoolean) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    return (a(paramProperties, paramString, bool1) != 0) ? bool2 : false;
  }
  
  public static boolean b(byte[] paramArrayOfbyte) {
    if (paramArrayOfbyte != null && paramArrayOfbyte.length != 0)
      try {
        SecureRandom.getInstance("SHA1PRNG").nextBytes(paramArrayOfbyte);
        return true;
      } catch (NoSuchAlgorithmException noSuchAlgorithmException) {} 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fgf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */