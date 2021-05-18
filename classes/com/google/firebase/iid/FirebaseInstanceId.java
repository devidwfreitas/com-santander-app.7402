package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.util.Base64;
import android.util.Log;
import ehu;
import eis;
import eit;
import eiy;
import eiz;
import eja;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

public class FirebaseInstanceId {
  private static Map<String, FirebaseInstanceId> a = (Map<String, FirebaseInstanceId>)new ArrayMap();
  
  private static eit b;
  
  private final ehu c;
  
  private final eis d;
  
  private final String e;
  
  private FirebaseInstanceId(ehu paramehu, eis parameis) {
    this.c = paramehu;
    this.d = parameis;
    this.e = b();
    if (this.e == null)
      throw new IllegalStateException("IID failing to initialize, FirebaseApp is missing project ID"); 
    FirebaseInstanceIdService.a(this.c.a(), this);
  }
  
  public static int a(Context paramContext, String paramString) {
    try {
      return (paramContext.getPackageManager().getPackageInfo(paramString, 0)).versionCode;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      String str = String.valueOf(nameNotFoundException);
      Log.w("FirebaseInstanceId", (new StringBuilder(String.valueOf(str).length() + 23)).append("Failed to find package ").append(str).toString());
      return 0;
    } 
  }
  
  public static FirebaseInstanceId a() {
    return getInstance(ehu.d());
  }
  
  public static String a(Context paramContext) {
    return (a()).c.c().b();
  }
  
  public static String a(KeyPair paramKeyPair) {
    byte[] arrayOfByte = paramKeyPair.getPublic().getEncoded();
    try {
      arrayOfByte = MessageDigest.getInstance("SHA1").digest(arrayOfByte);
      arrayOfByte[0] = (byte)((arrayOfByte[0] & 0xF) + 112 & 0xFF);
      return Base64.encodeToString(arrayOfByte, 0, 8, 11);
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      Log.w("FirebaseInstanceId", "Unexpected error, device missing required alghorithms");
      return null;
    } 
  }
  
  public static String a(byte[] paramArrayOfbyte) {
    return Base64.encodeToString(paramArrayOfbyte, 11);
  }
  
  public static void a(Context paramContext, eiz parameiz) {
    parameiz.c();
    Intent intent = new Intent();
    intent.putExtra("CMD", "RST");
    eiy.a().a(paramContext, intent);
  }
  
  public static int b(Context paramContext) {
    return a(paramContext, paramContext.getPackageName());
  }
  
  public static String c(Context paramContext) {
    try {
      return (paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0)).versionName;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      String str = String.valueOf(nameNotFoundException);
      Log.w("FirebaseInstanceId", (new StringBuilder(String.valueOf(str).length() + 38)).append("Never happens: can't find own package ").append(str).toString());
      return null;
    } 
  }
  
  public static void d(Context paramContext) {
    Intent intent = new Intent();
    intent.putExtra("CMD", "SYNC");
    eiy.a().a(paramContext, intent);
  }
  
  @Keep
  public static FirebaseInstanceId getInstance(@NonNull ehu paramehu) {
    // Byte code:
    //   0: ldc com/google/firebase/iid/FirebaseInstanceId
    //   2: monitorenter
    //   3: getstatic com/google/firebase/iid/FirebaseInstanceId.a : Ljava/util/Map;
    //   6: aload_0
    //   7: invokevirtual c : ()Leib;
    //   10: invokevirtual b : ()Ljava/lang/String;
    //   13: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   18: checkcast com/google/firebase/iid/FirebaseInstanceId
    //   21: astore_2
    //   22: aload_2
    //   23: astore_1
    //   24: aload_2
    //   25: ifnonnull -> 84
    //   28: aload_0
    //   29: invokevirtual a : ()Landroid/content/Context;
    //   32: aconst_null
    //   33: invokestatic a : (Landroid/content/Context;Landroid/os/Bundle;)Leis;
    //   36: astore_1
    //   37: getstatic com/google/firebase/iid/FirebaseInstanceId.b : Leit;
    //   40: ifnonnull -> 57
    //   43: new eit
    //   46: dup
    //   47: aload_1
    //   48: invokevirtual d : ()Leiz;
    //   51: invokespecial <init> : (Leiz;)V
    //   54: putstatic com/google/firebase/iid/FirebaseInstanceId.b : Leit;
    //   57: new com/google/firebase/iid/FirebaseInstanceId
    //   60: dup
    //   61: aload_0
    //   62: aload_1
    //   63: invokespecial <init> : (Lehu;Leis;)V
    //   66: astore_1
    //   67: getstatic com/google/firebase/iid/FirebaseInstanceId.a : Ljava/util/Map;
    //   70: aload_0
    //   71: invokevirtual c : ()Leib;
    //   74: invokevirtual b : ()Ljava/lang/String;
    //   77: aload_1
    //   78: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   83: pop
    //   84: ldc com/google/firebase/iid/FirebaseInstanceId
    //   86: monitorexit
    //   87: aload_1
    //   88: areturn
    //   89: astore_0
    //   90: ldc com/google/firebase/iid/FirebaseInstanceId
    //   92: monitorexit
    //   93: aload_0
    //   94: athrow
    // Exception table:
    //   from	to	target	type
    //   3	22	89	finally
    //   28	57	89	finally
    //   57	84	89	finally
  }
  
  @WorkerThread
  public String a(String paramString1, String paramString2) {
    return this.d.b(paramString1, paramString2, null);
  }
  
  public String a(String paramString1, String paramString2, Bundle paramBundle) {
    return this.d.c(paramString1, paramString2, paramBundle);
  }
  
  public void a(String paramString) {
    b.a(paramString);
    FirebaseInstanceIdService.a(this.c.a());
  }
  
  String b() {
    String str = this.c.c().d();
    if (str == null) {
      String str1 = this.c.c().b();
      str = str1;
      if (str1.startsWith("1:")) {
        String[] arrayOfString = str1.split(":");
        if (arrayOfString.length < 2)
          return null; 
        str1 = arrayOfString[1];
        str = str1;
        if (str1.isEmpty())
          return null; 
      } 
    } 
    return str;
  }
  
  void b(String paramString) {
    eja eja = g();
    if (eja == null || eja.b(eis.e))
      throw new IOException("token not available"); 
    Bundle bundle = new Bundle();
    String str1 = String.valueOf("/topics/");
    String str3 = String.valueOf(paramString);
    if (str3.length() != 0) {
      str1 = str1.concat(str3);
    } else {
      str1 = new String(str1);
    } 
    bundle.putString("gcm.topic", str1);
    str1 = eja.a;
    String str2 = String.valueOf("/topics/");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      paramString = str2.concat(paramString);
    } else {
      paramString = new String(str2);
    } 
    a(str1, paramString, bundle);
  }
  
  @WorkerThread
  public void b(String paramString1, String paramString2) {
    this.d.a(paramString1, paramString2, null);
  }
  
  public String c() {
    return a(this.d.a());
  }
  
  void c(String paramString) {
    eja eja = g();
    if (eja == null || eja.b(eis.e))
      throw new IOException("token not available"); 
    Bundle bundle = new Bundle();
    String str1 = String.valueOf("/topics/");
    String str3 = String.valueOf(paramString);
    if (str3.length() != 0) {
      str1 = str1.concat(str3);
    } else {
      str1 = new String(str1);
    } 
    bundle.putString("gcm.topic", str1);
    eis eis1 = this.d;
    String str2 = eja.a;
    str3 = String.valueOf("/topics/");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      paramString = str3.concat(paramString);
    } else {
      paramString = new String(str3);
    } 
    eis1.a(str2, paramString, bundle);
  }
  
  public long d() {
    return this.d.b();
  }
  
  public void e() {
    this.d.a("*", "*", null);
    this.d.c();
  }
  
  @Nullable
  public String f() {
    eja eja = g();
    if (eja == null || eja.b(eis.e))
      FirebaseInstanceIdService.a(this.c.a()); 
    return (eja != null) ? eja.a : null;
  }
  
  @Nullable
  eja g() {
    return this.d.d().a("", this.e, "*");
  }
  
  String h() {
    return a(this.e, "*");
  }
  
  eit i() {
    return b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\firebase\iid\FirebaseInstanceId.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */