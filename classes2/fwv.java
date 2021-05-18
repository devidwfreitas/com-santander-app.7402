import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.santander.app.MinhaConta;
import java.io.Serializable;

public class fwv implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private int c = 6;
  
  private String d = null;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private String h;
  
  private String i;
  
  public fwv() {
    try {
      TelephonyManager telephonyManager = (TelephonyManager)MinhaConta.b().getSystemService("phone");
      this.b = telephonyManager.getDeviceId();
      this.g = telephonyManager.getLine1Number();
      if (this.g == null || this.g.length() == 0 || this.g.equals("null"))
        this.g = "999999999"; 
      try {
        this.e = d();
        this.d = "ANDROID " + this.e;
        try {
          this.f = ((WifiManager)MinhaConta.b().getSystemService("wifi")).getConnectionInfo().getMacAddress();
          try {
            if (this.b == null || this.b.length() == 0)
              this.b = this.f.replaceAll(":", ""); 
            return;
          } catch (Exception null) {}
        } catch (Exception null) {}
      } catch (Exception null) {}
    } catch (Exception null) {
      try {
        throw exception;
      } catch (Exception exception) {
        Log.e("SecurityBean", "SecurityBean(mainActivity)", exception);
        return;
      } 
    } 
    throw exception;
  }
  
  public static String a() {
    // Byte code:
    //   0: new naf
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: invokestatic b : ()Landroid/content/Context;
    //   12: ldc 'phone'
    //   14: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   17: checkcast android/telephony/TelephonyManager
    //   20: invokevirtual getDeviceId : ()Ljava/lang/String;
    //   23: astore_2
    //   24: new java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial <init> : ()V
    //   31: ldc '33'
    //   33: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: getstatic android/os/Build.BOARD : Ljava/lang/String;
    //   39: invokevirtual length : ()I
    //   42: bipush #10
    //   44: irem
    //   45: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   48: getstatic android/os/Build.BRAND : Ljava/lang/String;
    //   51: invokevirtual length : ()I
    //   54: bipush #10
    //   56: irem
    //   57: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   60: invokestatic c : ()Ljava/lang/String;
    //   63: invokevirtual length : ()I
    //   66: bipush #10
    //   68: irem
    //   69: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   72: getstatic android/os/Build.DEVICE : Ljava/lang/String;
    //   75: invokevirtual length : ()I
    //   78: bipush #10
    //   80: irem
    //   81: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   84: getstatic android/os/Build.DISPLAY : Ljava/lang/String;
    //   87: invokevirtual length : ()I
    //   90: bipush #10
    //   92: irem
    //   93: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   96: getstatic android/os/Build.HOST : Ljava/lang/String;
    //   99: invokevirtual length : ()I
    //   102: bipush #10
    //   104: irem
    //   105: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   108: getstatic android/os/Build.ID : Ljava/lang/String;
    //   111: invokevirtual length : ()I
    //   114: bipush #10
    //   116: irem
    //   117: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   120: invokestatic b : ()Ljava/lang/String;
    //   123: invokevirtual length : ()I
    //   126: bipush #10
    //   128: irem
    //   129: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   132: getstatic android/os/Build.MODEL : Ljava/lang/String;
    //   135: invokevirtual length : ()I
    //   138: bipush #10
    //   140: irem
    //   141: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   144: getstatic android/os/Build.PRODUCT : Ljava/lang/String;
    //   147: invokevirtual length : ()I
    //   150: bipush #10
    //   152: irem
    //   153: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   156: getstatic android/os/Build.TAGS : Ljava/lang/String;
    //   159: invokevirtual length : ()I
    //   162: bipush #10
    //   164: irem
    //   165: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   168: getstatic android/os/Build.TYPE : Ljava/lang/String;
    //   171: invokevirtual length : ()I
    //   174: bipush #10
    //   176: irem
    //   177: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   180: getstatic android/os/Build.USER : Ljava/lang/String;
    //   183: invokevirtual length : ()I
    //   186: bipush #10
    //   188: irem
    //   189: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   192: invokevirtual toString : ()Ljava/lang/String;
    //   195: astore_3
    //   196: invokestatic b : ()Landroid/content/Context;
    //   199: invokevirtual getContentResolver : ()Landroid/content/ContentResolver;
    //   202: ldc 'android_id'
    //   204: invokestatic getString : (Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   207: astore #5
    //   209: invokestatic b : ()Landroid/content/Context;
    //   212: ldc 'wifi'
    //   214: invokevirtual getSystemService : (Ljava/lang/String;)Ljava/lang/Object;
    //   217: checkcast android/net/wifi/WifiManager
    //   220: invokevirtual getConnectionInfo : ()Landroid/net/wifi/WifiInfo;
    //   223: invokevirtual getMacAddress : ()Ljava/lang/String;
    //   226: astore #6
    //   228: new java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial <init> : ()V
    //   235: aload_2
    //   236: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: aload_3
    //   240: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: aload #5
    //   245: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload #6
    //   250: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: invokevirtual toString : ()Ljava/lang/String;
    //   256: astore #5
    //   258: aconst_null
    //   259: astore_2
    //   260: ldc 'MD5'
    //   262: invokestatic getInstance : (Ljava/lang/String;)Ljava/security/MessageDigest;
    //   265: astore_3
    //   266: aload_3
    //   267: astore_2
    //   268: aload_2
    //   269: aload #5
    //   271: invokevirtual getBytes : ()[B
    //   274: iconst_0
    //   275: aload #5
    //   277: invokevirtual length : ()I
    //   280: invokevirtual update : ([BII)V
    //   283: aload_2
    //   284: invokevirtual digest : ()[B
    //   287: astore_2
    //   288: new java/lang/StringBuffer
    //   291: dup
    //   292: invokespecial <init> : ()V
    //   295: astore_3
    //   296: iconst_0
    //   297: istore_0
    //   298: iload_0
    //   299: aload_2
    //   300: arraylength
    //   301: if_icmpge -> 355
    //   304: aload_2
    //   305: iload_0
    //   306: baload
    //   307: sipush #255
    //   310: iand
    //   311: istore_1
    //   312: iload_1
    //   313: bipush #15
    //   315: if_icmpgt -> 325
    //   318: aload_3
    //   319: ldc '0'
    //   321: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   324: pop
    //   325: aload_3
    //   326: iload_1
    //   327: invokestatic toHexString : (I)Ljava/lang/String;
    //   330: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   333: pop
    //   334: iload_0
    //   335: iconst_1
    //   336: iadd
    //   337: istore_0
    //   338: goto -> 298
    //   341: astore_3
    //   342: ldc 'Error'
    //   344: aload_3
    //   345: invokevirtual getMessage : ()Ljava/lang/String;
    //   348: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   351: pop
    //   352: goto -> 268
    //   355: aload_3
    //   356: invokevirtual toString : ()Ljava/lang/String;
    //   359: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   362: astore_2
    //   363: aload #4
    //   365: aload_2
    //   366: ldc 'UTF-8'
    //   368: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   371: invokevirtual b : ([B)Ljava/lang/String;
    //   374: astore_3
    //   375: aload_3
    //   376: areturn
    //   377: astore_3
    //   378: ldc 'Error'
    //   380: aload_3
    //   381: invokevirtual toString : ()Ljava/lang/String;
    //   384: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   387: pop
    //   388: aload_2
    //   389: areturn
    // Exception table:
    //   from	to	target	type
    //   260	266	341	java/lang/Exception
    //   363	375	377	java/lang/Exception
  }
  
  public static String b() {
    try {
      String str2 = Build.class.getField("MANUFACTURER").get(null).toString().trim().toUpperCase();
      String str1 = str2;
      if (str2.indexOf(" ") > 0)
        str1 = str2.substring(0, str2.indexOf(" ")); 
      return str1;
    } catch (Exception exception) {
      return Build.BRAND;
    } 
  }
  
  public static String c() {
    try {
      String str2 = Build.class.getField("CPU_ABI").get(null).toString().trim().toUpperCase();
      String str1 = str2;
      if (str2.indexOf(" ") > 0)
        str1 = str2.substring(0, str2.indexOf(" ")); 
      return str1;
    } catch (Exception exception) {
      return "33";
    } 
  }
  
  private String d(String paramString) {
    return (paramString == null || paramString.length() == 0) ? "" : paramString.toUpperCase();
  }
  
  public void a(String paramString) {
    this.h = paramString;
  }
  
  public void b(String paramString) {
    this.i = paramString;
  }
  
  public void c(String paramString) {
    this.g = paramString;
  }
  
  public String d() {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    return str2.startsWith(str1) ? d(str2) : d(str1 + " " + str2);
  }
  
  public String e() {
    return this.b;
  }
  
  public String f() {
    return this.c + "";
  }
  
  public String g() {
    return this.d;
  }
  
  public String h() {
    return this.e;
  }
  
  public String i() {
    return this.f;
  }
  
  public String j() {
    return this.h;
  }
  
  public String k() {
    return this.i;
  }
  
  public String l() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */