package br.com.santander.msgsdk.util;

import android.content.Context;
import android.os.Bundle;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.domain.NotificationData;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class Utils {
  private static String checkMonth(String paramString) {
    String str = paramString;
    if (paramString.length() == 1)
      str = "0" + paramString; 
    return str;
  }
  
  public static String convertDate(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", new Locale("pt", "BR"));
    try {
      Date date = simpleDateFormat.parse(paramString);
      return (new SimpleDateFormat("dd/MM 'às' HH:mm", new Locale("pt", "BR"))).format(date);
    } catch (ParseException parseException) {
      return "";
    } 
  }
  
  public static String convertStringToDate(String paramString) {
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    try {
      Date date = simpleDateFormat.parse(paramString);
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(date);
      String str = checkMonth(String.valueOf(calendar.get(2)));
      return String.valueOf(calendar.get(5) + "/" + str);
    } catch (ParseException parseException) {
      return "";
    } 
  }
  
  public static boolean expiredDate(String paramString) {
    boolean bool1;
    boolean bool2 = false;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", new Locale("pt", "BR"));
    try {
      bool1 = Calendar.getInstance().getTime().compareTo(simpleDateFormat.parse(paramString));
    } catch (ParseException parseException) {
      parseException.printStackTrace();
      bool1 = false;
    } 
    if (bool1)
      bool2 = true; 
    return bool2;
  }
  
  public static boolean isNullOrEmpty(String paramString) {
    return (paramString == null || paramString.trim().equals(Constants.EMPTY));
  }
  
  public static boolean isValidUrl(String paramString) {
    paramString = paramString.toLowerCase().trim();
    return (paramString.length() > 0 && (paramString.startsWith("http:") || paramString.startsWith("https:")));
  }
  
  public static void sendNotificationMock(Context paramContext) {
    Bundle bundle = new Bundle();
    bundle.putString("title", "Push Link");
    bundle.putString("message", "Texto para você clicar no link!");
    bundle.putString("pushId", "264876498");
    bundle.putString("userId", "00101139");
    bundle.putString("stimulumId", "MSGLINK");
    bundle.putString("msgPushId", "2");
    bundle.putString("msgPushValue", "https://www.santander.com.br");
    bundle.putString("msgPushInterativo", "msgPushInterativo");
    bundle.putBoolean("callbackEnabled", true);
    bundle.putBoolean("sandboxEnable", true);
    bundle.putString("uuid", "42424-hodheuo");
    MSGSDK.getInstance().sendNotification(paramContext, new NotificationData(bundle));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\Utils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */