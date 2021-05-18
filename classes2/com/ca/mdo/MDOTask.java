package com.ca.mdo;

import android.app.Activity;
import android.graphics.Bitmap;
import org.json.JSONObject;

public class MDOTask {
  Activity activity = null;
  
  JSONObject activityObj = null;
  
  Bitmap bitmap = null;
  
  boolean hasFocus = false;
  
  boolean isScreenshotByApi = false;
  
  public MDOTask(Activity paramActivity, JSONObject paramJSONObject, boolean paramBoolean, Bitmap paramBitmap) {
    this(paramActivity, paramJSONObject, paramBoolean, false);
    this.bitmap = paramBitmap;
  }
  
  public MDOTask(Activity paramActivity, JSONObject paramJSONObject, boolean paramBoolean1, boolean paramBoolean2) {
    this.activity = paramActivity;
    this.activityObj = paramJSONObject;
    this.hasFocus = paramBoolean1;
    this.isScreenshotByApi = paramBoolean2;
  }
  
  public void process() {
    sendData(Boolean.valueOf(takeScreenShot().booleanValue()));
  }
  
  protected void sendData(Boolean paramBoolean) {
    if (paramBoolean.booleanValue())
      CAMobileDevOps.sendGeneralEvent(79, this.activityObj); 
  }
  
  public Boolean takeScreenShot() {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: iconst_1
    //   3: istore_1
    //   4: invokestatic isInPrivateZone : ()Z
    //   7: ifeq -> 15
    //   10: iconst_0
    //   11: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   14: areturn
    //   15: getstatic com/ca/mdo/DatabaseHandler.isDBFull : Ljava/util/concurrent/atomic/AtomicBoolean;
    //   18: invokevirtual get : ()Z
    //   21: ifeq -> 29
    //   24: iconst_0
    //   25: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   28: areturn
    //   29: iload_3
    //   30: istore_2
    //   31: aload_0
    //   32: getfield activity : Landroid/app/Activity;
    //   35: ifnull -> 185
    //   38: iload_3
    //   39: istore_2
    //   40: aload_0
    //   41: getfield activityObj : Lorg/json/JSONObject;
    //   44: ifnull -> 185
    //   47: aload_0
    //   48: getfield hasFocus : Z
    //   51: ifne -> 58
    //   54: invokestatic isCrossWalk : ()Z
    //   57: istore_1
    //   58: aload_0
    //   59: getfield activity : Landroid/app/Activity;
    //   62: invokestatic getPolicyManager : (Landroid/content/Context;)Lcom/ca/mdo/PolicyManager;
    //   65: astore #4
    //   67: iload_1
    //   68: istore_2
    //   69: iload_1
    //   70: ifeq -> 185
    //   73: aload #4
    //   75: invokevirtual isScreenshotEnabled : ()Z
    //   78: ifne -> 90
    //   81: iload_1
    //   82: istore_2
    //   83: aload_0
    //   84: getfield isScreenshotByApi : Z
    //   87: ifeq -> 185
    //   90: aload_0
    //   91: getfield activity : Landroid/app/Activity;
    //   94: iconst_m1
    //   95: aload_0
    //   96: getfield bitmap : Landroid/graphics/Bitmap;
    //   99: invokestatic takeScreenshot : (Landroid/app/Activity;ILandroid/graphics/Bitmap;)Lcom/ca/mdo/Util$Screenshot;
    //   102: astore #4
    //   104: new org/json/JSONObject
    //   107: dup
    //   108: invokespecial <init> : ()V
    //   111: astore #5
    //   113: aload #5
    //   115: ldc 'or'
    //   117: invokestatic getDeviceOrientation : ()I
    //   120: invokestatic getDeviceOrientationString : (I)Ljava/lang/String;
    //   123: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   126: pop
    //   127: aload #4
    //   129: ifnull -> 171
    //   132: aload #5
    //   134: ldc 'ss'
    //   136: aload #4
    //   138: getfield encodedValue : Ljava/lang/String;
    //   141: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   144: pop
    //   145: aload #5
    //   147: ldc 'w'
    //   149: aload #4
    //   151: getfield screenShotWidth : I
    //   154: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   157: pop
    //   158: aload #5
    //   160: ldc 'h'
    //   162: aload #4
    //   164: getfield screenShotHeight : I
    //   167: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   170: pop
    //   171: aload_0
    //   172: getfield activityObj : Lorg/json/JSONObject;
    //   175: ldc 'attr'
    //   177: aload #5
    //   179: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   182: pop
    //   183: iload_1
    //   184: istore_2
    //   185: iload_2
    //   186: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   189: areturn
    //   190: astore #4
    //   192: aload #4
    //   194: invokevirtual getMessage : ()Ljava/lang/String;
    //   197: aload #4
    //   199: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   202: pop
    //   203: iconst_0
    //   204: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   207: areturn
    // Exception table:
    //   from	to	target	type
    //   113	127	190	org/json/JSONException
    //   132	171	190	org/json/JSONException
    //   171	183	190	org/json/JSONException
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */