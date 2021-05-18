package com.adjust.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;

public class SharedPreferencesManager {
  private static final int INDEX_CLICK_TIME = 1;
  
  private static final int INDEX_IS_SENDING = 2;
  
  private static final int INDEX_RAW_REFERRER = 0;
  
  private static final String PREFS_KEY_INSTALL_TRACKED = "install_tracked";
  
  private static final String PREFS_KEY_PUSH_TOKEN = "push_token";
  
  private static final String PREFS_KEY_RAW_REFERRERS = "raw_referrers";
  
  private static final String PREFS_NAME = "adjust_preferences";
  
  private final SharedPreferences sharedPreferences;
  
  public SharedPreferencesManager(Context paramContext) {
    this.sharedPreferences = paramContext.getSharedPreferences("adjust_preferences", 0);
  }
  
  private boolean getBoolean(String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   6: aload_1
    //   7: iload_2
    //   8: invokeinterface getBoolean : (Ljava/lang/String;Z)Z
    //   13: istore_3
    //   14: iload_3
    //   15: istore_2
    //   16: aload_0
    //   17: monitorexit
    //   18: iload_2
    //   19: ireturn
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    //   25: astore_1
    //   26: goto -> 16
    // Exception table:
    //   from	to	target	type
    //   2	14	25	java/lang/ClassCastException
    //   2	14	20	finally
  }
  
  private int getRawReferrerIndex(String paramString, long paramLong) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokevirtual getRawReferrerArray : ()Lorg/json/JSONArray;
    //   9: astore #7
    //   11: iload #4
    //   13: aload #7
    //   15: invokevirtual length : ()I
    //   18: if_icmpge -> 80
    //   21: aload #7
    //   23: iload #4
    //   25: invokevirtual getJSONArray : (I)Lorg/json/JSONArray;
    //   28: astore #8
    //   30: aload #8
    //   32: iconst_0
    //   33: aconst_null
    //   34: invokevirtual optString : (ILjava/lang/String;)Ljava/lang/String;
    //   37: astore #9
    //   39: aload #9
    //   41: ifnull -> 91
    //   44: aload #9
    //   46: aload_1
    //   47: invokevirtual equals : (Ljava/lang/Object;)Z
    //   50: ifne -> 56
    //   53: goto -> 91
    //   56: aload #8
    //   58: iconst_1
    //   59: ldc2_w -1
    //   62: invokevirtual optLong : (IJ)J
    //   65: lstore #5
    //   67: lload #5
    //   69: lload_2
    //   70: lcmp
    //   71: ifne -> 91
    //   74: aload_0
    //   75: monitorexit
    //   76: iload #4
    //   78: ireturn
    //   79: astore_1
    //   80: iconst_m1
    //   81: istore #4
    //   83: goto -> 74
    //   86: astore_1
    //   87: aload_0
    //   88: monitorexit
    //   89: aload_1
    //   90: athrow
    //   91: iload #4
    //   93: iconst_1
    //   94: iadd
    //   95: istore #4
    //   97: goto -> 11
    // Exception table:
    //   from	to	target	type
    //   5	11	79	org/json/JSONException
    //   5	11	86	finally
    //   11	39	79	org/json/JSONException
    //   11	39	86	finally
    //   44	53	79	org/json/JSONException
    //   44	53	86	finally
    //   56	67	79	org/json/JSONException
    //   56	67	86	finally
  }
  
  private String getString(String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   8: aload_1
    //   9: aconst_null
    //   10: invokeinterface getString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: areturn
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: athrow
    //   25: astore_1
    //   26: aload_2
    //   27: astore_1
    //   28: goto -> 16
    // Exception table:
    //   from	to	target	type
    //   4	16	25	java/lang/ClassCastException
    //   4	16	20	finally
  }
  
  private void remove(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: aload_1
    //   12: invokeinterface remove : (Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   17: invokeinterface apply : ()V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Exception table:
    //   from	to	target	type
    //   2	22	25	finally
  }
  
  private void saveBoolean(String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: aload_1
    //   12: iload_2
    //   13: invokeinterface putBoolean : (Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    //   18: invokeinterface apply : ()V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Exception table:
    //   from	to	target	type
    //   2	23	26	finally
  }
  
  private void saveString(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: aload_1
    //   12: aload_2
    //   13: invokeinterface putString : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   18: invokeinterface apply : ()V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Exception table:
    //   from	to	target	type
    //   2	23	26	finally
  }
  
  public void clear() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield sharedPreferences : Landroid/content/SharedPreferences;
    //   6: invokeinterface edit : ()Landroid/content/SharedPreferences$Editor;
    //   11: invokeinterface clear : ()Landroid/content/SharedPreferences$Editor;
    //   16: invokeinterface apply : ()V
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Exception table:
    //   from	to	target	type
    //   2	21	24	finally
  }
  
  public boolean getInstallTracked() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'install_tracked'
    //   5: iconst_0
    //   6: invokespecial getBoolean : (Ljava/lang/String;Z)Z
    //   9: istore_1
    //   10: aload_0
    //   11: monitorexit
    //   12: iload_1
    //   13: ireturn
    //   14: astore_2
    //   15: aload_0
    //   16: monitorexit
    //   17: aload_2
    //   18: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	14	finally
  }
  
  public String getPushToken() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'push_token'
    //   5: invokespecial getString : (Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_1
    //   9: aload_0
    //   10: monitorexit
    //   11: aload_1
    //   12: areturn
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	13	finally
  }
  
  public JSONArray getRawReferrer(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: lload_2
    //   5: invokespecial getRawReferrerIndex : (Ljava/lang/String;J)I
    //   8: istore #4
    //   10: iload #4
    //   12: iflt -> 30
    //   15: aload_0
    //   16: invokevirtual getRawReferrerArray : ()Lorg/json/JSONArray;
    //   19: iload #4
    //   21: invokevirtual getJSONArray : (I)Lorg/json/JSONArray;
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: areturn
    //   29: astore_1
    //   30: aconst_null
    //   31: astore_1
    //   32: goto -> 25
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Exception table:
    //   from	to	target	type
    //   2	10	35	finally
    //   15	25	29	org/json/JSONException
    //   15	25	35	finally
  }
  
  public JSONArray getRawReferrerArray() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'raw_referrers'
    //   5: invokespecial getString : (Ljava/lang/String;)Ljava/lang/String;
    //   8: astore_1
    //   9: aload_1
    //   10: ifnull -> 27
    //   13: new org/json/JSONArray
    //   16: dup
    //   17: aload_1
    //   18: invokespecial <init> : (Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: areturn
    //   26: astore_1
    //   27: new org/json/JSONArray
    //   30: dup
    //   31: invokespecial <init> : ()V
    //   34: astore_1
    //   35: goto -> 22
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	26	org/json/JSONException
    //   2	9	38	finally
    //   13	22	26	org/json/JSONException
    //   13	22	38	finally
    //   27	35	38	finally
  }
  
  public void removePushToken() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'push_token'
    //   5: invokespecial remove : (Ljava/lang/String;)V
    //   8: aload_0
    //   9: monitorexit
    //   10: return
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	8	11	finally
  }
  
  public void removeRawReferrer(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull -> 17
    //   6: aload_1
    //   7: invokevirtual length : ()I
    //   10: istore #4
    //   12: iload #4
    //   14: ifne -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: aload_0
    //   21: aload_1
    //   22: lload_2
    //   23: invokespecial getRawReferrerIndex : (Ljava/lang/String;J)I
    //   26: istore #5
    //   28: iload #5
    //   30: iflt -> 17
    //   33: aload_0
    //   34: invokevirtual getRawReferrerArray : ()Lorg/json/JSONArray;
    //   37: astore_1
    //   38: new org/json/JSONArray
    //   41: dup
    //   42: invokespecial <init> : ()V
    //   45: astore #7
    //   47: iconst_0
    //   48: istore #4
    //   50: aload_1
    //   51: invokevirtual length : ()I
    //   54: istore #6
    //   56: iload #4
    //   58: iload #6
    //   60: if_icmpge -> 99
    //   63: iload #4
    //   65: iload #5
    //   67: if_icmpne -> 79
    //   70: iload #4
    //   72: iconst_1
    //   73: iadd
    //   74: istore #4
    //   76: goto -> 50
    //   79: aload #7
    //   81: aload_1
    //   82: iload #4
    //   84: invokevirtual getJSONArray : (I)Lorg/json/JSONArray;
    //   87: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   90: pop
    //   91: goto -> 70
    //   94: astore #8
    //   96: goto -> 70
    //   99: aload_0
    //   100: ldc 'raw_referrers'
    //   102: aload #7
    //   104: invokevirtual toString : ()Ljava/lang/String;
    //   107: invokespecial saveString : (Ljava/lang/String;Ljava/lang/String;)V
    //   110: goto -> 17
    //   113: astore_1
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Exception table:
    //   from	to	target	type
    //   6	12	113	finally
    //   20	28	113	finally
    //   33	47	113	finally
    //   50	56	113	finally
    //   79	91	94	org/json/JSONException
    //   79	91	113	finally
    //   99	110	113	finally
  }
  
  public void savePushToken(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'push_token'
    //   5: aload_1
    //   6: invokespecial saveString : (Ljava/lang/String;Ljava/lang/String;)V
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	finally
  }
  
  public void saveRawReferrer(String paramString, long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual getRawReferrerArray : ()Lorg/json/JSONArray;
    //   6: astore #4
    //   8: aload_0
    //   9: aload_1
    //   10: lload_2
    //   11: invokevirtual getRawReferrer : (Ljava/lang/String;J)Lorg/json/JSONArray;
    //   14: astore #5
    //   16: aload #5
    //   18: ifnull -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: new org/json/JSONArray
    //   27: dup
    //   28: invokespecial <init> : ()V
    //   31: astore #5
    //   33: aload #5
    //   35: iconst_0
    //   36: aload_1
    //   37: invokevirtual put : (ILjava/lang/Object;)Lorg/json/JSONArray;
    //   40: pop
    //   41: aload #5
    //   43: iconst_1
    //   44: lload_2
    //   45: invokevirtual put : (IJ)Lorg/json/JSONArray;
    //   48: pop
    //   49: aload #5
    //   51: iconst_2
    //   52: iconst_0
    //   53: invokevirtual put : (II)Lorg/json/JSONArray;
    //   56: pop
    //   57: aload #4
    //   59: aload #5
    //   61: invokevirtual put : (Ljava/lang/Object;)Lorg/json/JSONArray;
    //   64: pop
    //   65: aload_0
    //   66: aload #4
    //   68: invokevirtual saveRawReferrerArray : (Lorg/json/JSONArray;)V
    //   71: goto -> 21
    //   74: astore_1
    //   75: goto -> 21
    //   78: astore_1
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    // Exception table:
    //   from	to	target	type
    //   2	16	74	org/json/JSONException
    //   2	16	78	finally
    //   24	71	74	org/json/JSONException
    //   24	71	78	finally
  }
  
  public void saveRawReferrerArray(JSONArray paramJSONArray) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'raw_referrers'
    //   5: aload_1
    //   6: invokevirtual toString : ()Ljava/lang/String;
    //   9: invokespecial saveString : (Ljava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: astore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: athrow
    // Exception table:
    //   from	to	target	type
    //   2	12	15	finally
  }
  
  public void setInstallTracked() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 'install_tracked'
    //   5: iconst_1
    //   6: invokespecial saveBoolean : (Ljava/lang/String;Z)V
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	12	finally
  }
  
  public void setSendingReferrersAsNotSent() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokevirtual getRawReferrerArray : ()Lorg/json/JSONArray;
    //   8: astore_3
    //   9: iconst_0
    //   10: istore_1
    //   11: iload_1
    //   12: aload_3
    //   13: invokevirtual length : ()I
    //   16: if_icmpge -> 50
    //   19: aload_3
    //   20: iload_1
    //   21: invokevirtual getJSONArray : (I)Lorg/json/JSONArray;
    //   24: astore #4
    //   26: aload #4
    //   28: iconst_2
    //   29: iconst_m1
    //   30: invokevirtual optInt : (II)I
    //   33: iconst_1
    //   34: if_icmpne -> 71
    //   37: aload #4
    //   39: iconst_2
    //   40: iconst_0
    //   41: invokevirtual put : (II)Lorg/json/JSONArray;
    //   44: pop
    //   45: iconst_1
    //   46: istore_2
    //   47: goto -> 71
    //   50: iload_2
    //   51: ifeq -> 59
    //   54: aload_0
    //   55: aload_3
    //   56: invokevirtual saveRawReferrerArray : (Lorg/json/JSONArray;)V
    //   59: aload_0
    //   60: monitorexit
    //   61: return
    //   62: astore_3
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_3
    //   66: athrow
    //   67: astore_3
    //   68: goto -> 59
    //   71: iload_1
    //   72: iconst_1
    //   73: iadd
    //   74: istore_1
    //   75: goto -> 11
    // Exception table:
    //   from	to	target	type
    //   4	9	67	org/json/JSONException
    //   4	9	62	finally
    //   11	26	67	org/json/JSONException
    //   11	26	62	finally
    //   26	45	67	org/json/JSONException
    //   26	45	62	finally
    //   54	59	67	org/json/JSONException
    //   54	59	62	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\SharedPreferencesManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */