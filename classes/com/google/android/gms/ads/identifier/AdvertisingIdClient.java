package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import cnz;
import coa;
import cop;
import csp;
import cvf;
import cwk;
import cwn;
import cwv;
import drn;
import dro;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class AdvertisingIdClient {
  cwk a;
  
  drn b;
  
  boolean c;
  
  Object d = new Object();
  
  coa e;
  
  final long f;
  
  private final Context g;
  
  public AdvertisingIdClient(Context paramContext) {
    this(paramContext, 30000L, false);
  }
  
  public AdvertisingIdClient(Context paramContext, long paramLong, boolean paramBoolean) {
    csp.a(paramContext);
    if (paramBoolean) {
      Context context = paramContext.getApplicationContext();
      if (context != null)
        paramContext = context; 
      this.g = paramContext;
    } else {
      this.g = paramContext;
    } 
    this.c = false;
    this.f = paramLong;
  }
  
  static cwk a(Context paramContext) {
    try {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      switch (cwn.b().a(paramContext)) {
        default:
          throw new IOException("Google Play services not available");
        case 0:
        case 2:
          break;
      } 
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      throw new cop(9);
    } 
    cwk cwk1 = new cwk();
    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
    intent.setPackage("com.google.android.gms");
    try {
      boolean bool = cvf.a().a((Context)nameNotFoundException, intent, (ServiceConnection)cwk1, 1);
      if (bool)
        return cwk1; 
    } catch (Throwable throwable) {
      throw new IOException(throwable);
    } 
    throw new IOException("Connection failure");
  }
  
  static drn a(Context paramContext, cwk paramcwk) {
    try {
      return dro.a(paramcwk.a(10000L, TimeUnit.MILLISECONDS));
    } catch (InterruptedException interruptedException) {
      throw new IOException("Interrupted exception");
    } catch (Throwable throwable) {
      throw new IOException(throwable);
    } 
  }
  
  private void a(AdvertisingIdClient$Info paramAdvertisingIdClient$Info, boolean paramBoolean, float paramFloat, Throwable paramThrowable) {
    if (Math.random() > paramFloat)
      return; 
    (new cnz(this, a(paramAdvertisingIdClient$Info, paramBoolean, paramThrowable).toString())).start();
  }
  
  public static void b(boolean paramBoolean) {}
  
  private void d() {
    synchronized (this.d) {
      if (this.e != null) {
        this.e.a();
        try {
          this.e.join();
        } catch (InterruptedException interruptedException) {}
      } 
      if (this.f > 0L)
        this.e = new coa(this, this.f); 
      return;
    } 
  }
  
  public static AdvertisingIdClient$Info getAdvertisingIdInfo(Context paramContext) {
    float f1;
    float f2 = 0.0F;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = bool2;
    try {
      Context context = cwv.l(paramContext);
      f1 = f2;
      bool1 = bool3;
      if (context != null) {
        bool1 = bool2;
        SharedPreferences sharedPreferences = context.getSharedPreferences("google_ads_flags", 1);
        bool1 = bool2;
        bool2 = sharedPreferences.getBoolean("gads:ad_id_app_context:enabled", false);
        bool1 = bool2;
        f1 = sharedPreferences.getFloat("gads:ad_id_app_context:ping_ratio", 0.0F);
        bool1 = bool2;
      } 
    } catch (Exception exception) {
      Log.w("AdvertisingIdClient", "Error while reading from SharedPreferences ", exception);
      f1 = f2;
    } 
    AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(paramContext, -1L, bool1);
    try {
      advertisingIdClient.a(false);
      AdvertisingIdClient$Info advertisingIdClient$Info = advertisingIdClient.b();
      advertisingIdClient.a(advertisingIdClient$Info, bool1, f1, null);
      return advertisingIdClient$Info;
    } catch (Throwable throwable) {
      advertisingIdClient.a(null, bool1, f1, throwable);
      return null;
    } finally {
      advertisingIdClient.c();
    } 
  }
  
  Uri a(AdvertisingIdClient$Info paramAdvertisingIdClient$Info, boolean paramBoolean, Throwable paramThrowable) {
    Bundle bundle = new Bundle();
    if (paramBoolean) {
      str = "1";
    } else {
      str = "0";
    } 
    bundle.putString("app_context", str);
    if (paramAdvertisingIdClient$Info != null) {
      if (paramAdvertisingIdClient$Info.isLimitAdTrackingEnabled()) {
        str = "1";
      } else {
        str = "0";
      } 
      bundle.putString("limit_ad_tracking", str);
    } 
    if (paramAdvertisingIdClient$Info != null && paramAdvertisingIdClient$Info.getId() != null)
      bundle.putString("ad_id_size", Integer.toString(paramAdvertisingIdClient$Info.getId().length())); 
    if (paramThrowable != null)
      bundle.putString("error", paramThrowable.getClass().getName()); 
    Uri.Builder builder = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
    for (String str : bundle.keySet())
      builder.appendQueryParameter(str, bundle.getString(str)); 
    return builder.build();
  }
  
  public void a() {
    a(true);
  }
  
  protected void a(boolean paramBoolean) {
    // Byte code:
    //   0: ldc_w 'Calling this from your main thread can lead to deadlock'
    //   3: invokestatic c : (Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield c : Z
    //   12: ifeq -> 19
    //   15: aload_0
    //   16: invokevirtual c : ()V
    //   19: aload_0
    //   20: aload_0
    //   21: getfield g : Landroid/content/Context;
    //   24: invokestatic a : (Landroid/content/Context;)Lcwk;
    //   27: putfield a : Lcwk;
    //   30: aload_0
    //   31: aload_0
    //   32: getfield g : Landroid/content/Context;
    //   35: aload_0
    //   36: getfield a : Lcwk;
    //   39: invokestatic a : (Landroid/content/Context;Lcwk;)Ldrn;
    //   42: putfield b : Ldrn;
    //   45: aload_0
    //   46: iconst_1
    //   47: putfield c : Z
    //   50: iload_1
    //   51: ifeq -> 58
    //   54: aload_0
    //   55: invokespecial d : ()V
    //   58: aload_0
    //   59: monitorexit
    //   60: return
    //   61: astore_2
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_2
    //   65: athrow
    // Exception table:
    //   from	to	target	type
    //   8	19	61	finally
    //   19	50	61	finally
    //   54	58	61	finally
    //   58	60	61	finally
    //   62	64	61	finally
  }
  
  public AdvertisingIdClient$Info b() {
    // Byte code:
    //   0: ldc_w 'Calling this from your main thread can lead to deadlock'
    //   3: invokestatic c : (Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield c : Z
    //   12: ifne -> 98
    //   15: aload_0
    //   16: getfield d : Ljava/lang/Object;
    //   19: astore_1
    //   20: aload_1
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield e : Lcoa;
    //   26: ifnull -> 39
    //   29: aload_0
    //   30: getfield e : Lcoa;
    //   33: invokevirtual b : ()Z
    //   36: ifne -> 60
    //   39: new java/io/IOException
    //   42: dup
    //   43: ldc_w 'AdvertisingIdClient is not connected.'
    //   46: invokespecial <init> : (Ljava/lang/String;)V
    //   49: athrow
    //   50: astore_2
    //   51: aload_1
    //   52: monitorexit
    //   53: aload_2
    //   54: athrow
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    //   60: aload_1
    //   61: monitorexit
    //   62: aload_0
    //   63: iconst_0
    //   64: invokevirtual a : (Z)V
    //   67: aload_0
    //   68: getfield c : Z
    //   71: ifne -> 98
    //   74: new java/io/IOException
    //   77: dup
    //   78: ldc_w 'AdvertisingIdClient cannot reconnect.'
    //   81: invokespecial <init> : (Ljava/lang/String;)V
    //   84: athrow
    //   85: astore_1
    //   86: new java/io/IOException
    //   89: dup
    //   90: ldc_w 'AdvertisingIdClient cannot reconnect.'
    //   93: aload_1
    //   94: invokespecial <init> : (Ljava/lang/String;Ljava/lang/Throwable;)V
    //   97: athrow
    //   98: aload_0
    //   99: getfield a : Lcwk;
    //   102: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   105: pop
    //   106: aload_0
    //   107: getfield b : Ldrn;
    //   110: invokestatic a : (Ljava/lang/Object;)Ljava/lang/Object;
    //   113: pop
    //   114: new com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   117: dup
    //   118: aload_0
    //   119: getfield b : Ldrn;
    //   122: invokeinterface a : ()Ljava/lang/String;
    //   127: aload_0
    //   128: getfield b : Ldrn;
    //   131: iconst_1
    //   132: invokeinterface a : (Z)Z
    //   137: invokespecial <init> : (Ljava/lang/String;Z)V
    //   140: astore_1
    //   141: aload_0
    //   142: monitorexit
    //   143: aload_0
    //   144: invokespecial d : ()V
    //   147: aload_1
    //   148: areturn
    //   149: astore_1
    //   150: ldc 'AdvertisingIdClient'
    //   152: ldc_w 'GMS remote exception '
    //   155: aload_1
    //   156: invokestatic i : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   159: pop
    //   160: new java/io/IOException
    //   163: dup
    //   164: ldc_w 'Remote exception'
    //   167: invokespecial <init> : (Ljava/lang/String;)V
    //   170: athrow
    // Exception table:
    //   from	to	target	type
    //   8	22	55	finally
    //   22	39	50	finally
    //   39	50	50	finally
    //   51	53	50	finally
    //   53	55	55	finally
    //   56	58	55	finally
    //   60	62	50	finally
    //   62	67	85	java/lang/Exception
    //   62	67	55	finally
    //   67	85	55	finally
    //   86	98	55	finally
    //   98	114	55	finally
    //   114	141	149	android/os/RemoteException
    //   114	141	55	finally
    //   141	143	55	finally
    //   150	171	55	finally
  }
  
  public void c() {
    // Byte code:
    //   0: ldc_w 'Calling this from your main thread can lead to deadlock'
    //   3: invokestatic c : (Ljava/lang/String;)V
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield g : Landroid/content/Context;
    //   12: ifnull -> 22
    //   15: aload_0
    //   16: getfield a : Lcwk;
    //   19: ifnonnull -> 25
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: getfield c : Z
    //   29: ifeq -> 46
    //   32: invokestatic a : ()Lcvf;
    //   35: aload_0
    //   36: getfield g : Landroid/content/Context;
    //   39: aload_0
    //   40: getfield a : Lcwk;
    //   43: invokevirtual a : (Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   46: aload_0
    //   47: iconst_0
    //   48: putfield c : Z
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield b : Ldrn;
    //   56: aload_0
    //   57: aconst_null
    //   58: putfield a : Lcwk;
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    //   69: astore_1
    //   70: ldc 'AdvertisingIdClient'
    //   72: ldc_w 'AdvertisingIdClient unbindService failed.'
    //   75: aload_1
    //   76: invokestatic i : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   79: pop
    //   80: goto -> 46
    //   83: astore_1
    //   84: ldc 'AdvertisingIdClient'
    //   86: ldc_w 'AdvertisingIdClient unbindService failed.'
    //   89: aload_1
    //   90: invokestatic i : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   93: pop
    //   94: goto -> 46
    // Exception table:
    //   from	to	target	type
    //   8	22	64	finally
    //   22	24	64	finally
    //   25	46	69	java/lang/IllegalArgumentException
    //   25	46	83	java/lang/Throwable
    //   25	46	64	finally
    //   46	63	64	finally
    //   65	67	64	finally
    //   70	80	64	finally
    //   84	94	64	finally
  }
  
  protected void finalize() {
    c();
    super.finalize();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\ads\identifier\AdvertisingIdClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */