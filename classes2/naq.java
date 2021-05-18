import android.content.Context;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.format.DateFormat;
import android.util.Log;
import android.widget.TextView;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.regex.Pattern;

public class naq {
  public static int a(String paramString1, String paramString2) {
    ParseException parseException2 = null;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
    try {
      Date date = simpleDateFormat.parse(paramString1);
      try {
        Date date1 = simpleDateFormat.parse(paramString2);
        return (int)((date1.getTime() - date.getTime()) / 86400000L);
      } catch (ParseException null) {}
    } catch (ParseException parseException1) {
      paramString1 = null;
    } 
    Log.e("Error", parseException1.toString());
    parseException1 = parseException2;
    return (int)((parseException1.getTime() - paramString1.getTime()) / 86400000L);
  }
  
  public static int a(List<CharSequence> paramList, String paramString) {
    return a(paramList.<String>toArray(new String[0]), paramString);
  }
  
  public static int a(String[] paramArrayOfString, String paramString) {
    if (paramString == null || "".equals(paramString))
      return -1; 
    int i = 0;
    while (i < paramArrayOfString.length) {
      int j = i;
      if (!paramArrayOfString[i].equals(paramString)) {
        j = i;
        if (l(paramArrayOfString[i]) != l(paramString)) {
          i++;
          continue;
        } 
      } 
      return j;
    } 
    return -1;
  }
  
  public static long a(long paramLong) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date(paramLong));
    calendar.add(2, -1);
    return paramLong - calendar.getTimeInMillis();
  }
  
  public static <T, E> T a(Map<T, E> paramMap, E paramE) {
    for (Map.Entry<T, E> entry : paramMap.entrySet()) {
      if (paramE.equals(entry.getValue()))
        return (T)entry.getKey(); 
    } 
    return null;
  }
  
  public static String a() {
    Date date = new Date();
    return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
  }
  
  public static String a(int paramInt) {
    (new String[13])[0] = "";
    (new String[13])[1] = "Janeiro";
    (new String[13])[2] = "Fevereiro";
    (new String[13])[3] = "Março";
    (new String[13])[4] = "Abril";
    (new String[13])[5] = "Maio";
    (new String[13])[6] = "Junho";
    (new String[13])[7] = "Julho";
    (new String[13])[8] = "Agosto";
    (new String[13])[9] = "Setembro";
    (new String[13])[10] = "Outubro";
    (new String[13])[11] = "Novembro";
    (new String[13])[12] = "Dezembro";
    return (new String[13])[paramInt];
  }
  
  public static String a(String paramString) {
    try {
      double d = Double.parseDouble(paramString) / 100.0D;
      NumberFormat numberFormat = NumberFormat.getPercentInstance();
      numberFormat.setMinimumFractionDigits(4);
      return numberFormat.format(d) + "";
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String a(Date paramDate, String paramString) {
    try {
      return (new SimpleDateFormat(paramString)).format(paramDate);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return "";
    } 
  }
  
  public static boolean a(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (networkInfo == null) ? false : (!networkInfo.isConnected() ? false : (!!networkInfo.isAvailable()));
  }
  
  public static boolean a(TextView paramTextView) {
    return (paramTextView.getText().toString().length() > 0);
  }
  
  public static long b(long paramLong) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date(paramLong));
    calendar.add(2, -1);
    calendar.add(5, 1);
    return paramLong - calendar.getTimeInMillis();
  }
  
  public static String b(Context paramContext) {
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, 2013);
    calendar.set(2, 11);
    calendar.set(5, 25);
    String[] arrayOfString = DateFormat.getDateFormat(paramContext).format(calendar.getTime()).split("/");
    StringBuilder stringBuilder = new StringBuilder();
    int j = arrayOfString.length;
    for (int i = 0; i < j; i++) {
      String str = arrayOfString[i];
      if (str.equals("25"))
        stringBuilder.append("dd/"); 
      if (str.equals("12"))
        stringBuilder.append("MM/"); 
      if (str.equals("2013"))
        stringBuilder.append("yyyy/"); 
    } 
    return stringBuilder.toString().substring(0, stringBuilder.toString().length() - 1);
  }
  
  public static String b(String paramString) {
    String[] arrayOfString = paramString.split("/");
    String str = a(Integer.parseInt(arrayOfString[1]));
    return String.format("%s de %s de %s", new Object[] { arrayOfString[0], str, arrayOfString[2] });
  }
  
  public static String[] b(String paramString1, String paramString2) {
    Vector<String> vector = new Vector();
    int i;
    for (i = paramString1.indexOf(paramString2); i >= 0; i = paramString1.indexOf(paramString2)) {
      vector.addElement(paramString1.substring(0, i));
      paramString1 = paramString1.substring(i + paramString2.length());
    } 
    vector.addElement(paramString1);
    String[] arrayOfString = new String[vector.size()];
    if (vector.size() > 0)
      for (i = 0; i < vector.size(); i++)
        arrayOfString[i] = vector.elementAt(i);  
    return arrayOfString;
  }
  
  public static String c(String paramString) {
    paramString = paramString.replace("*", "").trim();
    try {
      return "*" + paramString.substring(paramString.length() - 4);
    } catch (Exception exception) {
      return "*" + paramString;
    } 
  }
  
  public static String c(String paramString1, String paramString2) {
    return (paramString1 == null) ? h(paramString2) : (paramString1 + "/" + h(paramString2));
  }
  
  public static String d(String paramString1, String paramString2) {
    return (paramString1 == null) ? i(paramString2) : (paramString1 + "/" + i(paramString2));
  }
  
  public static long e(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    try {
      return simpleDateFormat.parse(paramString).getTime();
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return 0L;
    } 
  }
  
  public static Date e(String paramString1, String paramString2) {
    try {
      return (new SimpleDateFormat(paramString2)).parse(paramString1);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public static String f(String paramString) {
    String[] arrayOfString;
    if (paramString.length() > 3) {
      arrayOfString = b(String.valueOf(Integer.parseInt(paramString) / 1000.0F), ".");
      return arrayOfString[0] + " km";
    } 
    return arrayOfString + " m";
  }
  
  public static boolean g(String paramString) {
    if (paramString != null) {
      int i = paramString.length();
      if (i != 0) {
        int j;
        if (paramString.charAt(0) == '-') {
          if (i != 1) {
            j = 1;
          } else {
            return false;
          } 
        } else {
          j = 0;
        } 
        while (j < i) {
          char c = paramString.charAt(j);
          if (c > '/' && c < ':') {
            j++;
            continue;
          } 
          return false;
        } 
        return true;
      } 
    } 
    return false;
  }
  
  public static String h(String paramString) {
    try {
      if (paramString.length() > 9) {
        null = paramString.substring(2, paramString.length());
        int j = null.length();
        return null.substring(j - 9, j - 7) + "." + null.substring(j - 7, j - 1) + "." + null.substring(j - 1, j);
      } 
      null = paramString;
      int i = null.length();
      return null.substring(i - 9, i - 7) + "." + null.substring(i - 7, i - 1) + "." + null.substring(i - 1, i);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String i(String paramString) {
    try {
      if (paramString.length() > 9) {
        null = paramString.substring(2, paramString.length());
        int j = null.length();
        return null.substring(j - 9, j - 7) + "." + null.substring(j - 7, j - 1) + "-" + null.substring(j - 1, j);
      } 
      null = paramString;
      int i = null.length();
      return null.substring(i - 9, i - 7) + "." + null.substring(i - 7, i - 1) + "-" + null.substring(i - 1, i);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String j(String paramString) {
    return paramString.substring(3, paramString.length());
  }
  
  public static String k(String paramString) {
    return (paramString == null) ? "" : paramString.replaceAll("[\\.-]", "");
  }
  
  public static int l(String paramString) {
    try {
      return Integer.parseInt(paramString);
    } catch (Exception exception) {
      return -1;
    } 
  }
  
  public static boolean m(String paramString) {
    return Pattern.compile("^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$").matcher(paramString).matches();
  }
  
  public static String n(String paramString) {
    return (paramString == null || paramString.trim().isEmpty()) ? "0" : (paramString.contains("-") ? ("-" + paramString.replaceAll("(\\+)|(\\-)", "")) : paramString.replaceAll("(\\+)|(\\-)", ""));
  }
  
  public float a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4) {
    float[] arrayOfFloat = new float[1];
    Location.distanceBetween(paramDouble1, paramDouble2, paramDouble3, paramDouble4, arrayOfFloat);
    return arrayOfFloat[0];
  }
  
  public long d(String paramString) {
    String[] arrayOfString = paramString.split("-");
    Calendar calendar = Calendar.getInstance();
    calendar.set(Integer.parseInt(arrayOfString[0]), Integer.parseInt(arrayOfString[0]) + 1, 1);
    return calendar.getActualMaximum(5);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\naq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */