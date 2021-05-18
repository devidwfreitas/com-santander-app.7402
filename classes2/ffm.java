import android.annotation.SuppressLint;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.graphics.Point;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.content.ContextCompat;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Properties;

public class ffm {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final String d = "Configuration-key";
  
  public static final String e = "Timeout-key";
  
  public static final String f = "Silent-period-key";
  
  public static final String g = "Best-location-age-key";
  
  public static final String h = "Max-location-age-key";
  
  public static final String i = "Max-accuracy-key";
  
  public static final String j = "Add-timestamp-key";
  
  public static final int k = 0;
  
  public static final int l = 2;
  
  public static final int m = 3;
  
  public static final int n = 3;
  
  public static final int o = 2;
  
  public static final int p = 100;
  
  public static final int q = 1024;
  
  private static final String r = "MobileAPI";
  
  private static final int t = 22;
  
  private static final String u = "-1";
  
  private static ffm x = null;
  
  private ffa A;
  
  private ffg B;
  
  private ffd C;
  
  private int D = 0;
  
  private int[] E = new int[23];
  
  private boolean F = true;
  
  private int G;
  
  private int H;
  
  private int I;
  
  private int J;
  
  private int K;
  
  private HashMap<String, Object> L = new HashMap<String, Object>();
  
  private ffp s = ffp.LooperMissing;
  
  private final TelephonyManager v;
  
  private final Context w;
  
  private int y;
  
  private int z;
  
  @SuppressLint({"NewApi"})
  private ffm(Activity paramActivity) {
    this.w = paramActivity.getApplicationContext();
    Display display = paramActivity.getWindowManager().getDefaultDisplay();
    if (display != null) {
      if (Build.VERSION.SDK_INT >= 13) {
        Point point = new Point();
        display.getSize(point);
        this.y = point.x;
        this.z = point.y;
      } else {
        this.y = display.getWidth();
        this.z = display.getHeight();
      } 
    } else {
      this.y = 0;
      this.z = 0;
    } 
    this.v = (TelephonyManager)this.w.getSystemService("phone");
  }
  
  public static ffm a(Activity paramActivity) {
    // Byte code:
    //   0: ldc ffm
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull -> 24
    //   7: getstatic ffm.x : Lffm;
    //   10: ifnonnull -> 24
    //   13: new ffm
    //   16: dup
    //   17: aload_0
    //   18: invokespecial <init> : (Landroid/app/Activity;)V
    //   21: putstatic ffm.x : Lffm;
    //   24: getstatic ffm.x : Lffm;
    //   27: astore_0
    //   28: ldc ffm
    //   30: monitorexit
    //   31: aload_0
    //   32: areturn
    //   33: astore_0
    //   34: ldc ffm
    //   36: monitorexit
    //   37: aload_0
    //   38: athrow
    // Exception table:
    //   from	to	target	type
    //   7	24	33	finally
    //   24	28	33	finally
  }
  
  private void b(Properties paramProperties) {
    this.D = fgf.a(paramProperties, "Configuration-key", 0);
    if (this.D < 0 || this.D > 2)
      throw new IllegalArgumentException("invalid configuration key: " + this.D); 
    this.F = fgf.a(paramProperties, "Add-timestamp-key", false);
    if (this.D == 2) {
      this.G = fgf.a(paramProperties, "Timeout-key", 2);
      if (this.G < 1 || this.G > 4)
        throw new IllegalArgumentException("invalid TIMEOUT_MINUTES_KEY: " + this.G); 
      this.H = fgf.a(paramProperties, "Silent-period-key", 3);
      if (this.H < 1 || this.H > 60)
        throw new IllegalArgumentException("invalid SILENT_PERIOD_MINUTES_KEY: " + this.H); 
      this.I = fgf.a(paramProperties, "Best-location-age-key", 3);
      if (this.I < 2 || this.I > 4)
        throw new IllegalArgumentException("invalid BEST_LOCATION_AGE_MINUTES_KEY: " + this.I); 
      this.J = fgf.a(paramProperties, "Max-location-age-key", 2);
      if (this.J < 1 || this.J > 3)
        throw new IllegalArgumentException("invalid MAX_LOCATION_AGE_DAYS_KEY: " + this.J); 
      this.K = fgf.a(paramProperties, "Max-accuracy-key", 100);
      if (this.K < 50 || this.K > 200)
        throw new IllegalArgumentException("invalid MAX_ACCURACY_KEY: " + this.K); 
    } 
  }
  
  private void c(Properties paramProperties) {
    if (this.B == null)
      this.B = new ffg(); 
    this.B.a(this.w, this.G, this.H, this.I, this.J, this.K, this.A.j, new ffn(this));
    a(this.A.r);
    this.A.x = g();
    this.A.y = h();
    this.A.s = p();
    this.A.t = q();
  }
  
  private void v() {
    this.C = new ffd(this.w);
    this.A.f = new Date();
    this.A.g = a();
    this.A.h = b();
    this.A.i = c();
    this.A.v = r();
    this.A.z = n();
    this.A.A = o();
  }
  
  private void w() {
    this.A.k = i();
    this.A.l = j();
    this.A.m = k();
    this.A.n = l();
    this.A.o = m();
    this.A.u = d();
    this.A.p = e();
    this.A.q = f();
    this.A.B = s();
  }
  
  private void x() {
    if (this.s.equals(ffp.LooperCreated)) {
      Looper.myLooper().quit();
      this.s = ffp.LooperMissing;
    } 
  }
  
  private void y() {
    if (this.A != null) {
      this.A.a();
      this.A = null;
    } 
    this.L.clear();
    if (this.C != null)
      this.C = null; 
  }
  
  private void z() {
    if (this.B != null) {
      this.B.a();
      this.B = null;
    } 
  }
  
  int a(int paramInt) {
    return (paramInt >= 0 && paramInt < this.E.length) ? this.E[paramInt] : -1;
  }
  
  String a() {
    this.E[1] = -1;
    try {
      if (ContextCompat.checkSelfPermission(this.w, "android.permission.READ_PHONE_STATE") == 0) {
        String str = this.v.getDeviceId();
        this.E[1] = 0;
        return str;
      } 
      this.E[1] = 1;
      return "-1";
    } catch (SecurityException securityException) {
      this.E[1] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String a(ffc paramffc) {
    this.E[12] = -1;
    try {
      paramffc.a(((WifiManager)this.w.getSystemService("wifi")).getConnectionInfo());
      this.E[12] = 0;
      return paramffc.toString();
    } catch (SecurityException securityException) {
      this.E[12] = 1;
      paramffc.a();
      Log.e("MobileAPI", securityException.toString());
      return null;
    } 
  }
  
  public void a(Properties paramProperties) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 'MobileAPI'
    //   4: ldc_w 'initSDK'
    //   7: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_0
    //   12: getfield A : Lffa;
    //   15: ifnull -> 30
    //   18: ldc 'MobileAPI'
    //   20: ldc_w 'SDK already initialized'
    //   23: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   26: pop
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: invokestatic myLooper : ()Landroid/os/Looper;
    //   33: ifnonnull -> 83
    //   36: invokestatic prepare : ()V
    //   39: aload_0
    //   40: getstatic ffp.LooperCreated : Lffp;
    //   43: putfield s : Lffp;
    //   46: aload_1
    //   47: ifnonnull -> 93
    //   50: new java/lang/IllegalArgumentException
    //   53: dup
    //   54: new java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial <init> : ()V
    //   61: ldc_w 'Invalid parameter: '
    //   64: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_1
    //   68: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual toString : ()Ljava/lang/String;
    //   74: invokespecial <init> : (Ljava/lang/String;)V
    //   77: athrow
    //   78: astore_1
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: aload_0
    //   84: getstatic ffp.LooperExist : Lffp;
    //   87: putfield s : Lffp;
    //   90: goto -> 46
    //   93: aload_0
    //   94: aload_1
    //   95: invokespecial b : (Ljava/util/Properties;)V
    //   98: aload_0
    //   99: new ffa
    //   102: dup
    //   103: aload_0
    //   104: getfield D : I
    //   107: invokespecial <init> : (I)V
    //   110: putfield A : Lffa;
    //   113: iconst_0
    //   114: istore_2
    //   115: iload_2
    //   116: aload_0
    //   117: getfield E : [I
    //   120: arraylength
    //   121: if_icmpge -> 138
    //   124: aload_0
    //   125: getfield E : [I
    //   128: iload_2
    //   129: iconst_2
    //   130: iastore
    //   131: iload_2
    //   132: iconst_1
    //   133: iadd
    //   134: istore_2
    //   135: goto -> 115
    //   138: aload_0
    //   139: getfield D : I
    //   142: tableswitch default -> 202, 0 -> 168, 1 -> 175, 2 -> 186
    //   168: aload_0
    //   169: invokespecial v : ()V
    //   172: goto -> 27
    //   175: aload_0
    //   176: invokespecial v : ()V
    //   179: aload_0
    //   180: invokespecial w : ()V
    //   183: goto -> 27
    //   186: aload_0
    //   187: invokespecial v : ()V
    //   190: aload_0
    //   191: invokespecial w : ()V
    //   194: aload_0
    //   195: aload_1
    //   196: invokespecial c : (Ljava/util/Properties;)V
    //   199: goto -> 27
    //   202: goto -> 27
    // Exception table:
    //   from	to	target	type
    //   2	27	78	finally
    //   30	46	78	finally
    //   50	78	78	finally
    //   83	90	78	finally
    //   93	113	78	finally
    //   115	131	78	finally
    //   138	168	78	finally
    //   168	172	78	finally
    //   175	183	78	finally
    //   186	199	78	finally
  }
  
  public boolean a(ffo paramffo, String paramString, Object paramObject) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_3
    //   6: instanceof java/lang/Integer
    //   9: ifeq -> 32
    //   12: getstatic ffo.INT : Lffo;
    //   15: astore #6
    //   17: aload_1
    //   18: aload #6
    //   20: if_acmpeq -> 50
    //   23: iload #5
    //   25: istore #4
    //   27: aload_0
    //   28: monitorexit
    //   29: iload #4
    //   31: ireturn
    //   32: aload_3
    //   33: instanceof java/lang/Boolean
    //   36: ifeq -> 66
    //   39: iload #5
    //   41: istore #4
    //   43: aload_1
    //   44: getstatic ffo.BOOLEAN : Lffo;
    //   47: if_acmpne -> 27
    //   50: aload_0
    //   51: getfield L : Ljava/util/HashMap;
    //   54: aload_2
    //   55: aload_3
    //   56: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   59: pop
    //   60: iconst_1
    //   61: istore #4
    //   63: goto -> 27
    //   66: aload_3
    //   67: instanceof java/lang/String
    //   70: ifeq -> 121
    //   73: iload #5
    //   75: istore #4
    //   77: aload_1
    //   78: getstatic ffo.STRING : Lffo;
    //   81: if_acmpne -> 27
    //   84: iload #5
    //   86: istore #4
    //   88: aload_3
    //   89: invokevirtual toString : ()Ljava/lang/String;
    //   92: invokevirtual length : ()I
    //   95: sipush #1024
    //   98: if_icmpgt -> 27
    //   101: aload_2
    //   102: invokevirtual toString : ()Ljava/lang/String;
    //   105: invokevirtual length : ()I
    //   108: sipush #1024
    //   111: if_icmple -> 50
    //   114: iload #5
    //   116: istore #4
    //   118: goto -> 27
    //   121: iload #5
    //   123: istore #4
    //   125: aload_3
    //   126: instanceof java/lang/Float
    //   129: ifeq -> 27
    //   132: getstatic ffo.FLOAT : Lffo;
    //   135: astore #6
    //   137: aload_1
    //   138: aload #6
    //   140: if_acmpeq -> 50
    //   143: iload #5
    //   145: istore #4
    //   147: goto -> 27
    //   150: astore_1
    //   151: aload_0
    //   152: monitorexit
    //   153: aload_1
    //   154: athrow
    // Exception table:
    //   from	to	target	type
    //   5	17	150	finally
    //   32	39	150	finally
    //   43	50	150	finally
    //   50	60	150	finally
    //   66	73	150	finally
    //   77	84	150	finally
    //   88	114	150	finally
    //   125	137	150	finally
  }
  
  String b() {
    this.E[2] = -1;
    try {
      String str = this.v.getSubscriberId();
      this.E[2] = 0;
      return str;
    } catch (SecurityException securityException) {
      this.E[2] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String c() {
    this.E[3] = -1;
    try {
      String str = this.v.getLine1Number();
      this.E[3] = 0;
      return str;
    } catch (SecurityException securityException) {
      this.E[3] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String d() {
    this.E[15] = 0;
    return Integer.toString(this.y) + "x" + Integer.toString(this.z);
  }
  
  String e() {
    this.E[10] = -1;
    try {
      String str2 = Locale.getDefault().getLanguage().toLowerCase();
      if (str2.equals("iw")) {
        String str = "he";
        this.E[10] = 0;
        return str;
      } 
      if (str2.equals("in")) {
        String str = "id";
        this.E[10] = 0;
        return str;
      } 
      String str1 = str2;
      if (str2.equals("ji"))
        str1 = "yi"; 
      this.E[10] = 0;
      return str1;
    } catch (SecurityException securityException) {
      this.E[10] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String f() {
    this.E[11] = -1;
    try {
      String str = ((WifiManager)this.w.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      this.E[11] = 0;
      return str;
    } catch (SecurityException securityException) {
      this.E[11] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String g() {
    this.E[18] = -1;
    try {
      null = this.v.getNetworkOperator();
      this.E[18] = 0;
      if (null != null && null.length() >= 3)
        return null.substring(0, 3); 
      int i = (this.w.getResources().getConfiguration()).mcc;
      return (i == 0) ? null : Integer.toString(i);
    } catch (SecurityException securityException) {
      this.E[18] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String h() {
    this.E[19] = -1;
    try {
      null = this.v.getNetworkOperator();
      this.E[19] = 0;
      if (null != null && null.length() >= 3)
        return null.substring(3); 
      int i = (this.w.getResources().getConfiguration()).mnc;
      return (i == 0) ? null : Integer.toString(i);
    } catch (SecurityException securityException) {
      this.E[19] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
  }
  
  String i() {
    this.E[5] = 0;
    return Build.MODEL;
  }
  
  boolean j() {
    this.E[6] = 0;
    return true;
  }
  
  String k() {
    this.E[7] = 0;
    try {
      BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if (bluetoothAdapter != null) {
        String str = bluetoothAdapter.getName();
        boolean bool = TextUtils.isEmpty(str);
        if (!bool)
          return str; 
      } 
    } catch (SecurityException securityException) {}
    String str2 = Build.DEVICE;
    String str1 = str2;
    return str2.equals(i()) ? null : str1;
  }
  
  String l() {
    this.E[8] = 0;
    return "Android";
  }
  
  String m() {
    this.E[9] = 0;
    return "" + Build.VERSION.SDK_INT;
  }
  
  int n() {
    this.E[21] = 0;
    return fge.a(this.w);
  }
  
  int o() {
    this.E[22] = 0;
    return this.C.a();
  }
  
  String p() {
    this.E[13] = -1;
    try {
      String str1;
      CellLocation cellLocation = this.v.getCellLocation();
      if (cellLocation instanceof GsmCellLocation) {
        str1 = Integer.toString(((GsmCellLocation)cellLocation).getCid());
        this.E[13] = 0;
        return str1;
      } 
      if (str1 instanceof CdmaCellLocation) {
        str1 = Integer.toString(((CdmaCellLocation)str1).getBaseStationId());
        this.E[13] = 0;
        return str1;
      } 
    } catch (SecurityException securityException) {
      this.E[13] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
    String str = null;
    this.E[13] = 0;
    return str;
  }
  
  String q() {
    this.E[14] = -1;
    try {
      CellLocation cellLocation = this.v.getCellLocation();
      if (cellLocation instanceof GsmCellLocation) {
        this.E[14] = 0;
        return Integer.toString(((GsmCellLocation)cellLocation).getLac());
      } 
    } catch (SecurityException securityException) {
      this.E[14] = 1;
      Log.e("MobileAPI", securityException.toString());
      return "-1";
    } 
    return null;
  }
  
  String r() {
    return fey.a(this.w);
  }
  
  String s() {
    this.E[20] = 0;
    return Settings.Secure.getString(this.w.getContentResolver(), "android_id");
  }
  
  public String t() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 'MobileAPI'
    //   4: ldc_w 'collectInfo'
    //   7: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_0
    //   12: getfield A : Lffa;
    //   15: ifnonnull -> 34
    //   18: new java/lang/IllegalStateException
    //   21: dup
    //   22: ldc_w 'Mobile SDK was not initialized'
    //   25: invokespecial <init> : (Ljava/lang/String;)V
    //   28: athrow
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    //   34: aload_0
    //   35: getfield A : Lffa;
    //   38: aload_0
    //   39: getfield F : Z
    //   42: aload_0
    //   43: getfield L : Ljava/util/HashMap;
    //   46: invokevirtual a : (ZLjava/util/HashMap;)Ljava/lang/String;
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: areturn
    // Exception table:
    //   from	to	target	type
    //   2	29	29	finally
    //   34	50	29	finally
  }
  
  public void u() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc 'MobileAPI'
    //   4: ldc_w 'destroy'
    //   7: invokestatic i : (Ljava/lang/String;Ljava/lang/String;)I
    //   10: pop
    //   11: aload_0
    //   12: invokespecial z : ()V
    //   15: aload_0
    //   16: invokespecial y : ()V
    //   19: aload_0
    //   20: invokespecial x : ()V
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ffm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */