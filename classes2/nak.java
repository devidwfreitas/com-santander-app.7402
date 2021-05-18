import android.icu.text.SimpleDateFormat;
import android.support.annotation.NonNull;
import android.text.TextWatcher;
import android.util.Log;
import android.widget.EditText;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class nak {
  public static TextWatcher a(@NonNull EditText paramEditText) {
    return a(paramEditText, (TextWatcher)null);
  }
  
  public static TextWatcher a(@NonNull EditText paramEditText, TextWatcher paramTextWatcher) {
    paramTextWatcher = new nal(paramTextWatcher, paramEditText);
    paramEditText.addTextChangedListener(paramTextWatcher);
    return paramTextWatcher;
  }
  
  public static String a() {
    return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());
  }
  
  public static String a(int paramInt) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, paramInt);
    Date date = calendar.getTime();
    return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
  }
  
  public static String a(long paramLong) {
    try {
      Date date = new Date(paramLong);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String a(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("MMM");
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd");
      return simpleDateFormat1.format(date) + " " + simpleDateFormat2.format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return paramString;
    } 
  }
  
  public static String a(String paramString1, String paramString2, String paramString3) {
    try {
      Date date = (new SimpleDateFormat(paramString2)).parse(paramString1);
      return (new SimpleDateFormat(paramString3)).format(date);
    } catch (Exception exception) {
      return paramString1;
    } 
  }
  
  public static String a(Date paramDate) {
    return (new SimpleDateFormat("yyyy-MM-dd")).format(paramDate);
  }
  
  public static String a(Date paramDate, String paramString) {
    try {
      return (new SimpleDateFormat(paramString)).format(paramDate);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static Date a(String paramString1, String paramString2) {
    try {
      return (new SimpleDateFormat(paramString2)).parse(paramString1);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public static String b() {
    return (new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date());
  }
  
  public static String b(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("MMMM");
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd");
      return simpleDateFormat1.format(date) + " " + simpleDateFormat2.format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String c() {
    return (new SimpleDateFormat("dd/MM/yyyy")).format(new Date());
  }
  
  public static String c(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("MMM");
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd");
      return simpleDateFormat1.format(date) + " " + simpleDateFormat2.format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String d() {
    try {
      return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date());
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public static String d(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("MMMM")).format(date).toUpperCase();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String e() {
    try {
      return (new SimpleDateFormat("yyyyMMdd")).format(new Date());
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  public static String e(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("MMM")).format(date).toUpperCase();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String f() {
    Calendar calendar = Calendar.getInstance();
    calendar.add(5, 1);
    return (new SimpleDateFormat("dd/MM/yyyy")).format(Long.valueOf(calendar.getTimeInMillis()));
  }
  
  public static String f(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("dd")).format(date).toUpperCase();
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String g(String paramString) {
    int i;
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      String str = (new SimpleDateFormat("dd")).format(date).toUpperCase();
      i = Integer.parseInt(str);
      if (i >= 11 && i <= 13)
        return i + "th"; 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
    switch (i % 10) {
      default:
        return i + "th";
      case 1:
        return i + "st";
      case 2:
        return i + "nd";
      case 3:
        break;
    } 
    return i + "rd";
  }
  
  public static String h(String paramString) {
    try {
      Date date = (new SimpleDateFormat("MMMM dd, yyyy")).parse(paramString);
      return (new SimpleDateFormat("MMM dd, yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String i(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("MMM dd, yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String j(String paramString) {
    try {
      Date date = (new SimpleDateFormat("MM/dd/yyyy")).parse(paramString);
      return (new SimpleDateFormat("MMMM dd, yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String k(String paramString) {
    try {
      Date date = (new SimpleDateFormat("MM/dd/yyyy")).parse(paramString);
      return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String l(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String m(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String n(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("yyyy")).format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String o(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("MM/dd/yyyy")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String p(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("MMMM dd, yyyy")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String q(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyyMMdd")).parse(paramString);
      return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String r(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyyMMdd")).parse(paramString);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String s(String paramString) {
    try {
      Date date = (new SimpleDateFormat("ddMMyy")).parse(paramString);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String t(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("yyyyMMdd")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String u(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      return (new SimpleDateFormat("yyyyMMdd")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String v(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      return (new SimpleDateFormat("yyyy-MM-dd")).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String w(String paramString) {
    try {
      Date date = (new SimpleDateFormat("dd/MM/yyyy")).parse(paramString);
      SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("MMMM");
      SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd");
      return simpleDateFormat2.format(date) + " " + simpleDateFormat1.format(date);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return paramString;
    } 
  }
  
  public static String x(String paramString) {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(paramString);
      return (new SimpleDateFormat("EEE, dd 'de' MMM 'de' yyyy", new Locale("pt", "BR"))).format(date);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  public static String y(String paramString) {
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM");
    try {
      return simpleDateFormat2.format(simpleDateFormat1.parse(paramString));
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return paramString;
    } 
  }
  
  public static String z(String paramString) {
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("dd/MM/yyyy");
    try {
      return simpleDateFormat2.format(simpleDateFormat1.parse(paramString));
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
      return paramString;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */