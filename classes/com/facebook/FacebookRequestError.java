package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import bhp;
import bhs;
import bht;
import bhu;
import bid;
import bod;
import java.net.HttpURLConnection;
import org.json.JSONObject;

public final class FacebookRequestError implements Parcelable {
  public static final Parcelable.Creator<FacebookRequestError> CREATOR;
  
  public static final int a = -1;
  
  public static final int b = -1;
  
  static final bhu c = new bhu(200, 299, null);
  
  private static final String d = "code";
  
  private static final String e = "body";
  
  private static final String f = "error";
  
  private static final String g = "type";
  
  private static final String h = "code";
  
  private static final String i = "message";
  
  private static final String j = "error_code";
  
  private static final String k = "error_subcode";
  
  private static final String l = "error_msg";
  
  private static final String m = "error_reason";
  
  private static final String n = "error_user_title";
  
  private static final String o = "error_user_msg";
  
  private static final String p = "is_transient";
  
  private final JSONObject A;
  
  private final Object B;
  
  private final HttpURLConnection C;
  
  private final bhp D;
  
  private final bht q;
  
  private final int r;
  
  private final int s;
  
  private final int t;
  
  private final String u;
  
  private final String v;
  
  private final String w;
  
  private final String x;
  
  private final String y;
  
  private final JSONObject z;
  
  static {
    CREATOR = (Parcelable.Creator<FacebookRequestError>)new bhs();
  }
  
  private FacebookRequestError(int paramInt1, int paramInt2, int paramInt3, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, JSONObject paramJSONObject1, JSONObject paramJSONObject2, Object paramObject, HttpURLConnection paramHttpURLConnection, bhp parambhp) {
    bht bht1;
    this.r = paramInt1;
    this.s = paramInt2;
    this.t = paramInt3;
    this.u = paramString1;
    this.v = paramString2;
    this.A = paramJSONObject1;
    this.z = paramJSONObject2;
    this.B = paramObject;
    this.C = paramHttpURLConnection;
    this.w = paramString3;
    this.x = paramString4;
    paramInt1 = 0;
    if (parambhp != null) {
      this.D = parambhp;
      paramInt1 = 1;
    } else {
      this.D = (bhp)new bid(this, paramString2);
    } 
    bod bod = o();
    if (paramInt1 != 0) {
      bht1 = bht.OTHER;
    } else {
      bht1 = bod.a(paramInt2, paramInt3, paramBoolean);
    } 
    this.q = bht1;
    this.y = bod.a(this.q);
  }
  
  public FacebookRequestError(int paramInt, String paramString1, String paramString2) {
    this(-1, paramInt, -1, paramString1, paramString2, null, null, false, null, null, null, null, null);
  }
  
  private FacebookRequestError(Parcel paramParcel) {
    this(paramParcel.readInt(), paramParcel.readInt(), paramParcel.readInt(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), false, null, null, null, null, null);
  }
  
  public FacebookRequestError(HttpURLConnection paramHttpURLConnection, Exception paramException) {
    this(-1, -1, -1, null, null, null, null, false, null, null, null, paramHttpURLConnection, bhp1);
  }
  
  public static FacebookRequestError a(JSONObject paramJSONObject, Object paramObject, HttpURLConnection paramHttpURLConnection) {
    // Byte code:
    //   0: aload_0
    //   1: ldc 'code'
    //   3: invokevirtual has : (Ljava/lang/String;)Z
    //   6: ifeq -> 357
    //   9: aload_0
    //   10: ldc 'code'
    //   12: invokevirtual getInt : (Ljava/lang/String;)I
    //   15: istore #6
    //   17: aload_0
    //   18: ldc 'body'
    //   20: ldc 'FACEBOOK_NON_JSON_RESULT'
    //   22: invokestatic a : (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   25: astore #9
    //   27: aload #9
    //   29: ifnull -> 298
    //   32: aload #9
    //   34: instanceof org/json/JSONObject
    //   37: ifeq -> 298
    //   40: aload #9
    //   42: checkcast org/json/JSONObject
    //   45: astore #15
    //   47: aconst_null
    //   48: astore #9
    //   50: aconst_null
    //   51: astore #10
    //   53: aconst_null
    //   54: astore #13
    //   56: aconst_null
    //   57: astore #14
    //   59: iconst_0
    //   60: istore #8
    //   62: iconst_m1
    //   63: istore #4
    //   65: iconst_m1
    //   66: istore #5
    //   68: iconst_0
    //   69: istore_3
    //   70: aload #15
    //   72: ldc 'error'
    //   74: invokevirtual has : (Ljava/lang/String;)Z
    //   77: ifeq -> 199
    //   80: aload #15
    //   82: ldc 'error'
    //   84: aconst_null
    //   85: invokestatic a : (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   88: checkcast org/json/JSONObject
    //   91: astore #13
    //   93: aload #13
    //   95: ldc 'type'
    //   97: aconst_null
    //   98: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   101: astore #9
    //   103: aload #13
    //   105: ldc 'message'
    //   107: aconst_null
    //   108: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   111: astore #10
    //   113: aload #13
    //   115: ldc 'code'
    //   117: iconst_m1
    //   118: invokevirtual optInt : (Ljava/lang/String;I)I
    //   121: istore #4
    //   123: aload #13
    //   125: ldc 'error_subcode'
    //   127: iconst_m1
    //   128: invokevirtual optInt : (Ljava/lang/String;I)I
    //   131: istore #5
    //   133: aload #13
    //   135: ldc 'error_user_msg'
    //   137: aconst_null
    //   138: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   141: astore #11
    //   143: aload #13
    //   145: ldc 'error_user_title'
    //   147: aconst_null
    //   148: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   151: astore #12
    //   153: aload #13
    //   155: ldc 'is_transient'
    //   157: iconst_0
    //   158: invokevirtual optBoolean : (Ljava/lang/String;Z)Z
    //   161: istore #7
    //   163: iconst_1
    //   164: istore_3
    //   165: iload_3
    //   166: ifeq -> 298
    //   169: new com/facebook/FacebookRequestError
    //   172: dup
    //   173: iload #6
    //   175: iload #4
    //   177: iload #5
    //   179: aload #9
    //   181: aload #10
    //   183: aload #12
    //   185: aload #11
    //   187: iload #7
    //   189: aload #15
    //   191: aload_0
    //   192: aload_1
    //   193: aload_2
    //   194: aconst_null
    //   195: invokespecial <init> : (IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lbhp;)V
    //   198: areturn
    //   199: aload #15
    //   201: ldc 'error_code'
    //   203: invokevirtual has : (Ljava/lang/String;)Z
    //   206: ifne -> 241
    //   209: aload #15
    //   211: ldc 'error_msg'
    //   213: invokevirtual has : (Ljava/lang/String;)Z
    //   216: ifne -> 241
    //   219: aload #14
    //   221: astore #12
    //   223: aload #13
    //   225: astore #11
    //   227: iload #8
    //   229: istore #7
    //   231: aload #15
    //   233: ldc 'error_reason'
    //   235: invokevirtual has : (Ljava/lang/String;)Z
    //   238: ifeq -> 165
    //   241: aload #15
    //   243: ldc 'error_reason'
    //   245: aconst_null
    //   246: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   249: astore #9
    //   251: aload #15
    //   253: ldc 'error_msg'
    //   255: aconst_null
    //   256: invokevirtual optString : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   259: astore #10
    //   261: aload #15
    //   263: ldc 'error_code'
    //   265: iconst_m1
    //   266: invokevirtual optInt : (Ljava/lang/String;I)I
    //   269: istore #4
    //   271: aload #15
    //   273: ldc 'error_subcode'
    //   275: iconst_m1
    //   276: invokevirtual optInt : (Ljava/lang/String;I)I
    //   279: istore #5
    //   281: iconst_1
    //   282: istore_3
    //   283: aload #14
    //   285: astore #12
    //   287: aload #13
    //   289: astore #11
    //   291: iload #8
    //   293: istore #7
    //   295: goto -> 165
    //   298: getstatic com/facebook/FacebookRequestError.c : Lbhu;
    //   301: iload #6
    //   303: invokevirtual a : (I)Z
    //   306: ifne -> 357
    //   309: aload_0
    //   310: ldc 'body'
    //   312: invokevirtual has : (Ljava/lang/String;)Z
    //   315: ifeq -> 359
    //   318: aload_0
    //   319: ldc 'body'
    //   321: ldc 'FACEBOOK_NON_JSON_RESULT'
    //   323: invokestatic a : (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    //   326: checkcast org/json/JSONObject
    //   329: astore #9
    //   331: new com/facebook/FacebookRequestError
    //   334: dup
    //   335: iload #6
    //   337: iconst_m1
    //   338: iconst_m1
    //   339: aconst_null
    //   340: aconst_null
    //   341: aconst_null
    //   342: aconst_null
    //   343: iconst_0
    //   344: aload #9
    //   346: aload_0
    //   347: aload_1
    //   348: aload_2
    //   349: aconst_null
    //   350: invokespecial <init> : (IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lbhp;)V
    //   353: astore_0
    //   354: aload_0
    //   355: areturn
    //   356: astore_0
    //   357: aconst_null
    //   358: areturn
    //   359: aconst_null
    //   360: astore #9
    //   362: goto -> 331
    // Exception table:
    //   from	to	target	type
    //   0	27	356	org/json/JSONException
    //   32	47	356	org/json/JSONException
    //   70	163	356	org/json/JSONException
    //   169	199	356	org/json/JSONException
    //   199	219	356	org/json/JSONException
    //   231	241	356	org/json/JSONException
    //   241	281	356	org/json/JSONException
    //   298	331	356	org/json/JSONException
    //   331	354	356	org/json/JSONException
  }
  
  static bod o() {
    // Byte code:
    //   0: ldc com/facebook/FacebookRequestError
    //   2: monitorenter
    //   3: invokestatic l : ()Ljava/lang/String;
    //   6: invokestatic a : (Ljava/lang/String;)Lboj;
    //   9: astore_0
    //   10: aload_0
    //   11: ifnonnull -> 23
    //   14: invokestatic d : ()Lbod;
    //   17: astore_0
    //   18: ldc com/facebook/FacebookRequestError
    //   20: monitorexit
    //   21: aload_0
    //   22: areturn
    //   23: aload_0
    //   24: invokevirtual i : ()Lbod;
    //   27: astore_0
    //   28: goto -> 18
    //   31: astore_0
    //   32: ldc com/facebook/FacebookRequestError
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    // Exception table:
    //   from	to	target	type
    //   3	10	31	finally
    //   14	18	31	finally
    //   23	28	31	finally
  }
  
  public bht a() {
    return this.q;
  }
  
  public int b() {
    return this.r;
  }
  
  public int c() {
    return this.s;
  }
  
  public int d() {
    return this.t;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public String e() {
    return this.u;
  }
  
  public String f() {
    return (this.v != null) ? this.v : this.D.getLocalizedMessage();
  }
  
  public String g() {
    return this.y;
  }
  
  public String h() {
    return this.x;
  }
  
  public String i() {
    return this.w;
  }
  
  public JSONObject j() {
    return this.A;
  }
  
  public JSONObject k() {
    return this.z;
  }
  
  public Object l() {
    return this.B;
  }
  
  public HttpURLConnection m() {
    return this.C;
  }
  
  public bhp n() {
    return this.D;
  }
  
  public String toString() {
    return "{HttpStatus: " + this.r + ", errorCode: " + this.s + ", errorType: " + this.u + ", errorMessage: " + f() + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.r);
    paramParcel.writeInt(this.s);
    paramParcel.writeInt(this.t);
    paramParcel.writeString(this.u);
    paramParcel.writeString(this.v);
    paramParcel.writeString(this.w);
    paramParcel.writeString(this.x);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\FacebookRequestError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */