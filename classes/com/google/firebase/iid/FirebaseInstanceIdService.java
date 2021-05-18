package com.google.firebase.iid;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.annotation.VisibleForTesting;
import android.support.annotation.WorkerThread;
import android.util.Log;
import eim;
import eio;
import eis;
import eiu;
import eiy;
import eiz;

public class FirebaseInstanceIdService extends eio {
  @VisibleForTesting
  static final Object a = new Object();
  
  @VisibleForTesting
  static boolean b = false;
  
  private static BroadcastReceiver e;
  
  private boolean f = false;
  
  private int a(Intent paramIntent, boolean paramBoolean) {
    int i;
    byte b = 10;
    if (paramIntent == null) {
      i = 10;
    } else {
      i = paramIntent.getIntExtra("next_retry_delay_in_seconds", 0);
    } 
    return (i < 10 && !paramBoolean) ? 30 : ((i >= 10) ? ((i > 28800) ? 28800 : i) : b);
  }
  
  private eis a(String paramString) {
    if (paramString == null)
      return eis.a((Context)this, null); 
    Bundle bundle = new Bundle();
    bundle.putString("subtype", paramString);
    return eis.a((Context)this, bundle);
  }
  
  static void a(Context paramContext) {
    if (eiu.a(paramContext) == null)
      return; 
    synchronized (a) {
      if (!b) {
        eiy.a().a(paramContext, c(0));
        b = true;
      } 
      return;
    } 
  }
  
  static void a(Context paramContext, FirebaseInstanceId paramFirebaseInstanceId) {
    synchronized (a) {
      if (b)
        return; 
      null = paramFirebaseInstanceId.g();
      if (null == null || null.b(eis.e) || paramFirebaseInstanceId.i().a() != null) {
        a(paramContext);
        return;
      } 
    } 
  }
  
  private void a(Intent paramIntent, String paramString) {
    boolean bool = c((Context)this);
    int i = a(paramIntent, bool);
    Log.d("FirebaseInstanceId", (new StringBuilder(String.valueOf(paramString).length() + 47)).append("background sync failed: ").append(paramString).append(", retry in ").append(i).append("s").toString());
    synchronized (a) {
      d(i);
      b = true;
      if (!bool) {
        if (this.f)
          Log.d("FirebaseInstanceId", "device not connected. Connectivity change received registered"); 
        if (e == null)
          e = (BroadcastReceiver)new eim(this, i); 
        getApplicationContext().registerReceiver(e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      } 
      return;
    } 
  }
  
  private void a(Intent paramIntent, boolean paramBoolean1, boolean paramBoolean2) {
    // Byte code:
    //   0: getstatic com/google/firebase/iid/FirebaseInstanceIdService.a : Ljava/lang/Object;
    //   3: astore #7
    //   5: aload #7
    //   7: monitorenter
    //   8: iconst_0
    //   9: putstatic com/google/firebase/iid/FirebaseInstanceIdService.b : Z
    //   12: aload #7
    //   14: monitorexit
    //   15: aload_0
    //   16: invokestatic a : (Landroid/content/Context;)Ljava/lang/String;
    //   19: ifnonnull -> 29
    //   22: return
    //   23: astore_1
    //   24: aload #7
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    //   29: invokestatic a : ()Lcom/google/firebase/iid/FirebaseInstanceId;
    //   32: astore #7
    //   34: aload #7
    //   36: invokevirtual g : ()Leja;
    //   39: astore #8
    //   41: aload #8
    //   43: ifnull -> 57
    //   46: aload #8
    //   48: getstatic eis.e : Ljava/lang/String;
    //   51: invokevirtual b : (Ljava/lang/String;)Z
    //   54: ifeq -> 154
    //   57: aload #7
    //   59: invokevirtual h : ()Ljava/lang/String;
    //   62: astore #9
    //   64: aload #9
    //   66: ifnull -> 135
    //   69: aload_0
    //   70: getfield f : Z
    //   73: ifeq -> 84
    //   76: ldc 'FirebaseInstanceId'
    //   78: ldc 'get master token succeeded'
    //   80: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   83: pop
    //   84: aload_0
    //   85: aload #7
    //   87: invokestatic a : (Landroid/content/Context;Lcom/google/firebase/iid/FirebaseInstanceId;)V
    //   90: iload_3
    //   91: ifne -> 117
    //   94: aload #8
    //   96: ifnull -> 117
    //   99: aload #8
    //   101: ifnull -> 22
    //   104: aload #9
    //   106: aload #8
    //   108: getfield a : Ljava/lang/String;
    //   111: invokevirtual equals : (Ljava/lang/Object;)Z
    //   114: ifne -> 22
    //   117: aload_0
    //   118: invokevirtual a : ()V
    //   121: return
    //   122: astore #7
    //   124: aload_0
    //   125: aload_1
    //   126: aload #7
    //   128: invokevirtual getMessage : ()Ljava/lang/String;
    //   131: invokespecial a : (Landroid/content/Intent;Ljava/lang/String;)V
    //   134: return
    //   135: aload_0
    //   136: aload_1
    //   137: ldc 'returned token is null'
    //   139: invokespecial a : (Landroid/content/Intent;Ljava/lang/String;)V
    //   142: return
    //   143: astore_1
    //   144: ldc 'FirebaseInstanceId'
    //   146: ldc 'Unable to get master token'
    //   148: aload_1
    //   149: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   152: pop
    //   153: return
    //   154: aload #7
    //   156: invokevirtual i : ()Leit;
    //   159: astore #8
    //   161: aload #8
    //   163: invokevirtual a : ()Ljava/lang/String;
    //   166: astore #7
    //   168: aload #7
    //   170: ifnull -> 395
    //   173: aload #7
    //   175: ldc '!'
    //   177: invokevirtual split : (Ljava/lang/String;)[Ljava/lang/String;
    //   180: astore #10
    //   182: aload #10
    //   184: arraylength
    //   185: iconst_2
    //   186: if_icmpne -> 272
    //   189: aload #10
    //   191: iconst_0
    //   192: aaload
    //   193: astore #9
    //   195: aload #10
    //   197: iconst_1
    //   198: aaload
    //   199: astore #10
    //   201: iconst_m1
    //   202: istore #5
    //   204: aload #9
    //   206: invokevirtual hashCode : ()I
    //   209: istore #6
    //   211: iload #5
    //   213: istore #4
    //   215: iload #6
    //   217: tableswitch default -> 244, 83 -> 290, 84 -> 248, 85 -> 310
    //   244: iload #5
    //   246: istore #4
    //   248: iload #4
    //   250: tableswitch default -> 272, 0 -> 330, 1 -> 369
    //   272: aload #8
    //   274: aload #7
    //   276: invokevirtual b : (Ljava/lang/String;)Z
    //   279: pop
    //   280: aload #8
    //   282: invokevirtual a : ()Ljava/lang/String;
    //   285: astore #7
    //   287: goto -> 168
    //   290: iload #5
    //   292: istore #4
    //   294: aload #9
    //   296: ldc 'S'
    //   298: invokevirtual equals : (Ljava/lang/Object;)Z
    //   301: ifeq -> 248
    //   304: iconst_0
    //   305: istore #4
    //   307: goto -> 248
    //   310: iload #5
    //   312: istore #4
    //   314: aload #9
    //   316: ldc 'U'
    //   318: invokevirtual equals : (Ljava/lang/Object;)Z
    //   321: ifeq -> 248
    //   324: iconst_1
    //   325: istore #4
    //   327: goto -> 248
    //   330: invokestatic a : ()Lcom/google/firebase/iid/FirebaseInstanceId;
    //   333: aload #10
    //   335: invokevirtual b : (Ljava/lang/String;)V
    //   338: aload_0
    //   339: getfield f : Z
    //   342: ifeq -> 272
    //   345: ldc 'FirebaseInstanceId'
    //   347: ldc 'subscribe operation succeeded'
    //   349: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   352: pop
    //   353: goto -> 272
    //   356: astore #7
    //   358: aload_0
    //   359: aload_1
    //   360: aload #7
    //   362: invokevirtual getMessage : ()Ljava/lang/String;
    //   365: invokespecial a : (Landroid/content/Intent;Ljava/lang/String;)V
    //   368: return
    //   369: invokestatic a : ()Lcom/google/firebase/iid/FirebaseInstanceId;
    //   372: aload #10
    //   374: invokevirtual c : (Ljava/lang/String;)V
    //   377: aload_0
    //   378: getfield f : Z
    //   381: ifeq -> 272
    //   384: ldc 'FirebaseInstanceId'
    //   386: ldc 'unsubscribe operation succeeded'
    //   388: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   391: pop
    //   392: goto -> 272
    //   395: ldc 'FirebaseInstanceId'
    //   397: ldc 'topic sync succeeded'
    //   399: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)I
    //   402: pop
    //   403: return
    // Exception table:
    //   from	to	target	type
    //   8	15	23	finally
    //   24	27	23	finally
    //   57	64	122	java/io/IOException
    //   57	64	143	java/lang/SecurityException
    //   69	84	122	java/io/IOException
    //   69	84	143	java/lang/SecurityException
    //   84	90	122	java/io/IOException
    //   84	90	143	java/lang/SecurityException
    //   104	117	122	java/io/IOException
    //   104	117	143	java/lang/SecurityException
    //   117	121	122	java/io/IOException
    //   117	121	143	java/lang/SecurityException
    //   135	142	122	java/io/IOException
    //   135	142	143	java/lang/SecurityException
    //   204	211	356	java/io/IOException
    //   294	304	356	java/io/IOException
    //   314	324	356	java/io/IOException
    //   330	353	356	java/io/IOException
    //   369	392	356	java/io/IOException
  }
  
  private void a(eiu parameiu, Bundle paramBundle) {
    String str = eiu.a((Context)this);
    if (str == null) {
      Log.w("FirebaseInstanceId", "Unable to respond to ping due to missing target package");
      return;
    } 
    Intent intent = new Intent("com.google.android.gcm.intent.SEND");
    intent.setPackage(str);
    intent.putExtras(paramBundle);
    parameiu.a(intent);
    intent.putExtra("google.to", "google.com/iid");
    intent.putExtra("google.message_id", eiu.b());
    sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
  }
  
  private static Intent c(int paramInt) {
    Intent intent = new Intent("ACTION_TOKEN_REFRESH_RETRY");
    intent.putExtra("next_retry_delay_in_seconds", paramInt);
    return intent;
  }
  
  private static boolean c(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (networkInfo != null && networkInfo.isConnected());
  }
  
  private void d(int paramInt) {
    AlarmManager alarmManager = (AlarmManager)getSystemService("alarm");
    PendingIntent pendingIntent = eiy.a((Context)this, 0, c(paramInt * 2), 134217728);
    alarmManager.set(3, SystemClock.elapsedRealtime() + (paramInt * 1000), pendingIntent);
  }
  
  private String e(Intent paramIntent) {
    String str2 = paramIntent.getStringExtra("subtype");
    String str1 = str2;
    if (str2 == null)
      str1 = ""; 
    return str1;
  }
  
  @WorkerThread
  public void a() {}
  
  public boolean a(Intent paramIntent) {
    this.f = Log.isLoggable("FirebaseInstanceId", 3);
    if (paramIntent.getStringExtra("error") != null || paramIntent.getStringExtra("registration_id") != null) {
      String str = e(paramIntent);
      if (this.f) {
        String str1 = String.valueOf(str);
        if (str1.length() != 0) {
          str1 = "Register result in service ".concat(str1);
        } else {
          str1 = new String("Register result in service ");
        } 
        Log.d("FirebaseInstanceId", str1);
      } 
      a(str).e().d(paramIntent);
      return true;
    } 
    return false;
  }
  
  public void b(Intent paramIntent) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual getAction : ()Ljava/lang/String;
    //   4: astore #4
    //   6: aload #4
    //   8: astore_3
    //   9: aload #4
    //   11: ifnonnull -> 18
    //   14: ldc_w ''
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual hashCode : ()I
    //   22: tableswitch default -> 40, -1737547627 -> 66
    //   40: iconst_m1
    //   41: istore_2
    //   42: iload_2
    //   43: tableswitch default -> 60, 0 -> 81
    //   60: aload_0
    //   61: aload_1
    //   62: invokevirtual d : (Landroid/content/Intent;)V
    //   65: return
    //   66: aload_3
    //   67: ldc_w 'ACTION_TOKEN_REFRESH_RETRY'
    //   70: invokevirtual equals : (Ljava/lang/Object;)Z
    //   73: ifeq -> 40
    //   76: iconst_0
    //   77: istore_2
    //   78: goto -> 42
    //   81: aload_0
    //   82: aload_1
    //   83: iconst_0
    //   84: iconst_0
    //   85: invokespecial a : (Landroid/content/Intent;ZZ)V
    //   88: return
  }
  
  protected Intent c(Intent paramIntent) {
    return eiy.a().b();
  }
  
  public void d(Intent paramIntent) {
    String str2 = e(paramIntent);
    eis eis = a(str2);
    String str1 = paramIntent.getStringExtra("CMD");
    if (this.f) {
      String str = String.valueOf(paramIntent.getExtras());
      Log.d("FirebaseInstanceId", (new StringBuilder(String.valueOf(str2).length() + 18 + String.valueOf(str1).length() + String.valueOf(str).length())).append("Service command ").append(str2).append(" ").append(str1).append(" ").append(str).toString());
    } 
    if (paramIntent.getStringExtra("unregistered") != null) {
      eiz eiz = eis.d();
      str1 = str2;
      if (str2 == null)
        str1 = ""; 
      eiz.d(str1);
      eis.e().d(paramIntent);
      return;
    } 
    if ("gcm.googleapis.com/refresh".equals(paramIntent.getStringExtra("from"))) {
      eis.d().d(str2);
      a(paramIntent, false, true);
      return;
    } 
    if ("RST".equals(str1)) {
      eis.c();
      a(paramIntent, true, true);
      return;
    } 
    if ("RST_FULL".equals(str1)) {
      if (!eis.d().b()) {
        eis.c();
        eis.d().c();
        a(paramIntent, true, true);
        return;
      } 
      return;
    } 
    if ("SYNC".equals(str1)) {
      eis.d().d(str2);
      a(paramIntent, false, true);
      return;
    } 
    if ("PING".equals(str1)) {
      a(eis.e(), paramIntent.getExtras());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\firebase\iid\FirebaseInstanceIdService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */