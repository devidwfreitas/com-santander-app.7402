package com.santander.app.analytics.util;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.FileObserver;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import fsd;
import fse;
import fsf;

public class TriggerService extends IntentService {
  private static FileObserver c;
  
  private static int e = 1;
  
  private boolean a;
  
  private Context b;
  
  private final String d = "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt";
  
  public TriggerService() {
    super("TriggerService");
  }
  
  private fsd b() {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_2
    //   8: new java/io/BufferedReader
    //   11: dup
    //   12: new java/io/FileReader
    //   15: dup
    //   16: ldc '/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt'
    //   18: invokespecial <init> : (Ljava/lang/String;)V
    //   21: invokespecial <init> : (Ljava/io/Reader;)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual readLine : ()Ljava/lang/String;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnull -> 52
    //   34: aload_2
    //   35: aload_3
    //   36: invokeinterface add : (Ljava/lang/Object;)Z
    //   41: pop
    //   42: goto -> 25
    //   45: astore_2
    //   46: aload_1
    //   47: invokevirtual close : ()V
    //   50: aconst_null
    //   51: areturn
    //   52: aload_0
    //   53: aload_2
    //   54: aload_2
    //   55: invokeinterface size : ()I
    //   60: iconst_1
    //   61: isub
    //   62: invokeinterface get : (I)Ljava/lang/Object;
    //   67: invokevirtual toString : ()Ljava/lang/String;
    //   70: invokespecial c : (Ljava/lang/String;)Lfsd;
    //   73: astore_2
    //   74: aload_1
    //   75: invokevirtual close : ()V
    //   78: aload_2
    //   79: areturn
    //   80: astore_1
    //   81: aconst_null
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: areturn
    //   86: astore_2
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: invokevirtual close : ()V
    //   93: aload_2
    //   94: athrow
    //   95: astore_1
    //   96: aconst_null
    //   97: areturn
    //   98: astore_2
    //   99: goto -> 89
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -> 46
    // Exception table:
    //   from	to	target	type
    //   0	25	102	java/lang/Exception
    //   0	25	86	finally
    //   25	30	45	java/lang/Exception
    //   25	30	98	finally
    //   34	42	45	java/lang/Exception
    //   34	42	98	finally
    //   46	50	83	java/io/IOException
    //   52	74	45	java/lang/Exception
    //   52	74	98	finally
    //   74	78	80	java/io/IOException
    //   89	93	95	java/io/IOException
  }
  
  private void b(String paramString) {
    SharedPreferences sharedPreferences = this.b.getSharedPreferences("trigger_logs", 0);
    SharedPreferences.Editor editor = sharedPreferences.edit();
    if (paramString.equalsIgnoreCase(sharedPreferences.getString(paramString, "nothing"))) {
      e++;
      return;
    } 
    e = 1;
    editor.putString(paramString, paramString);
    editor.commit();
  }
  
  private fsd c(String paramString) {
    String[] arrayOfString1;
    String[] arrayOfString2 = paramString.substring(43, paramString.length()).split("-->");
    String str3 = arrayOfString2[0];
    if (arrayOfString2[1].contains("name:") && arrayOfString2[1].contains("value:")) {
      String[] arrayOfString = arrayOfString2[1].split("name:")[1].split("value:");
      str2 = arrayOfString[0];
      String str = arrayOfString[arrayOfString.length - 1];
      fsd fsd1 = new fsd();
      fsd1.a(str2);
      fsd1.b(str);
      fsd1.c(str3);
      return fsd1;
    } 
    if (str2[0].contains("stopApplicationTransaction")) {
      String[] arrayOfString = str2[1].split("transactionName:");
      str2 = arrayOfString[0];
      String str = arrayOfString[arrayOfString.length - 1];
      fsd fsd1 = new fsd();
      fsd1.a(str2);
      fsd1.b(str);
      fsd1.c(str3);
      return fsd1;
    } 
    if (str2[0].contains("startApplicationTransaction")) {
      String[] arrayOfString = str2[1].split("transactionName:")[1].split("serviceName:");
      str2 = arrayOfString[0];
      String str = arrayOfString[arrayOfString.length - 1];
      fsd fsd1 = new fsd();
      fsd1.a(str2);
      fsd1.b(str);
      fsd1.c(str3);
      return fsd1;
    } 
    paramString = str2;
    if (str2[0].contains("setSessionAttributeTypeText"))
      arrayOfString1 = str2[1].split("name:")[1].split("value:"); 
    String str2 = arrayOfString1[0];
    String str1 = arrayOfString1[arrayOfString1.length - 1];
    fsd fsd = new fsd();
    fsd.a(str2);
    fsd.b(str1);
    fsd.c(str3);
    return fsd;
  }
  
  public void a(String paramString) {
    if (this.b != null)
      (new Handler(Looper.getMainLooper())).post((Runnable)new fsf(this, paramString)); 
  }
  
  public void onDestroy() {
    super.onDestroy();
    this.a = false;
    c = null;
    Toast.makeText(this.b, "Trigger service has stoped", 0).show();
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    this.a = true;
    while (this.a) {
      if (c == null) {
        c = (FileObserver)new fse(this, "/storage/emulated/0/SantanderBrasil/Analytics/MBBPFlog.txt");
        c.startWatching();
      } 
    } 
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    this.b = getBaseContext();
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\analytic\\util\TriggerService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */