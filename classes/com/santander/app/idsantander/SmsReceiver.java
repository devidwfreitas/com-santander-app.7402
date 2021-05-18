package com.santander.app.idsantander;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SmsReceiver extends BroadcastReceiver {
  private String a(String paramString) {
    String str2 = null;
    Pattern pattern = Pattern.compile("(|^)\\d{8}");
    String str1 = str2;
    if (paramString != null) {
      Matcher matcher = pattern.matcher(paramString);
      str1 = str2;
      if (matcher.find())
        str1 = matcher.group(0); 
    } 
    return str1;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramContext.getSharedPreferences("x", 0).getBoolean("0", true))
      try {
        Bundle bundle = paramIntent.getExtras();
        if (bundle != null) {
          Object[] arrayOfObject = (Object[])bundle.get("pdus");
          int j = arrayOfObject.length;
          int i = 0;
          while (true) {
            if (i < j) {
              Object object = arrayOfObject[i];
              if (Build.VERSION.SDK_INT >= 23) {
                object = SmsMessage.createFromPdu((byte[])object, "3gpp");
              } else {
                object = SmsMessage.createFromPdu((byte[])object);
              } 
              object = object.getDisplayMessageBody();
              Log.d(SmsReceiver.class.getSimpleName(), "message: " + object);
              paramContext.sendBroadcast((new Intent("S")).putExtra("y", a((String)object)));
              i++;
              continue;
            } 
            return;
          } 
        } 
        return;
      } catch (Exception exception) {
        Log.e(SmsReceiver.class.getSimpleName(), "Exception: " + exception.getMessage());
        return;
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\SmsReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */