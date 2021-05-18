import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import java.util.List;

class ds extends AsyncTask<Context, Integer, Integer> {
  private boolean b = false;
  
  private boolean c = false;
  
  private boolean d = false;
  
  private boolean e = false;
  
  private int f = 0;
  
  private Exception g = null;
  
  private Context h;
  
  private ds(dr paramdr) {}
  
  private void a() {
    if (this.h != null) {
      String str1 = this.h.getPackageName();
      String str2 = dy.b(this.h);
      if (str2.isEmpty() || str2.equals("") || str2 == null) {
        this.f = 904;
        this.d = false;
        return;
      } 
      str1 = (String.valueOf(str2) + str1).toLowerCase();
      try {
        if (new dk(this.h, str1) == null) {
          this.f = 905;
          this.d = false;
          return;
        } 
        return;
      } catch (Exception exception) {
        exception.printStackTrace();
        this.f = 905;
        this.d = false;
        return;
      } 
    } 
  }
  
  private void a(String paramString1, Context paramContext, String paramString2, dk paramdk) {
    // Byte code:
    //   0: aload_1
    //   1: astore #5
    //   3: aload_1
    //   4: ifnonnull -> 13
    //   7: aload_2
    //   8: invokestatic b : (Landroid/content/Context;)Ljava/lang/String;
    //   11: astore #5
    //   13: new java/security/SecureRandom
    //   16: dup
    //   17: invokespecial <init> : ()V
    //   20: astore #6
    //   22: bipush #32
    //   24: newarray byte
    //   26: astore_1
    //   27: aload #6
    //   29: aload_1
    //   30: invokevirtual nextBytes : ([B)V
    //   33: new java/lang/String
    //   36: dup
    //   37: aload_1
    //   38: invokestatic a : ([B)[B
    //   41: invokespecial <init> : ([B)V
    //   44: astore #6
    //   46: aconst_null
    //   47: checkcast [B
    //   50: astore #7
    //   52: aload #4
    //   54: aload #6
    //   56: invokestatic b : (Ljava/lang/String;)Ljava/lang/String;
    //   59: invokevirtual getBytes : ()[B
    //   62: invokevirtual a : ([B)[B
    //   65: astore #4
    //   67: aload #4
    //   69: ifnonnull -> 138
    //   72: aload_0
    //   73: sipush #914
    //   76: putfield f : I
    //   79: aload_0
    //   80: iconst_0
    //   81: putfield d : Z
    //   84: return
    //   85: astore #5
    //   87: aload_0
    //   88: sipush #902
    //   91: putfield f : I
    //   94: aload #5
    //   96: invokevirtual printStackTrace : ()V
    //   99: aload_0
    //   100: iconst_1
    //   101: putfield e : Z
    //   104: aload_0
    //   105: aload #5
    //   107: putfield g : Ljava/lang/Exception;
    //   110: aload_1
    //   111: astore #5
    //   113: goto -> 13
    //   116: astore_1
    //   117: aload_1
    //   118: invokevirtual printStackTrace : ()V
    //   121: aload_0
    //   122: sipush #914
    //   125: putfield f : I
    //   128: aload_1
    //   129: invokevirtual printStackTrace : ()V
    //   132: aload_0
    //   133: iconst_0
    //   134: putfield d : Z
    //   137: return
    //   138: aload_2
    //   139: aload_3
    //   140: aload_3
    //   141: new java/lang/String
    //   144: dup
    //   145: aload #4
    //   147: invokespecial <init> : ([B)V
    //   150: invokestatic a : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   153: new bx
    //   156: dup
    //   157: aload_1
    //   158: invokespecial <init> : ([B)V
    //   161: astore_1
    //   162: aload_1
    //   163: aload #5
    //   165: invokevirtual a : (Ljava/lang/String;)Ljava/lang/String;
    //   168: astore_1
    //   169: aload_2
    //   170: aload_3
    //   171: aload_3
    //   172: aload_1
    //   173: invokestatic c : (Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   176: aload_0
    //   177: iconst_1
    //   178: putfield b : Z
    //   181: aload_0
    //   182: iconst_0
    //   183: putfield e : Z
    //   186: aload_0
    //   187: iconst_0
    //   188: putfield c : Z
    //   191: return
    //   192: astore_1
    //   193: aload_1
    //   194: invokevirtual printStackTrace : ()V
    //   197: aload_0
    //   198: sipush #915
    //   201: putfield f : I
    //   204: aload_1
    //   205: invokevirtual printStackTrace : ()V
    //   208: aload_0
    //   209: iconst_0
    //   210: putfield d : Z
    //   213: return
    // Exception table:
    //   from	to	target	type
    //   7	13	85	java/lang/Exception
    //   52	67	116	java/lang/Exception
    //   72	84	116	java/lang/Exception
    //   162	169	192	java/lang/Exception
  }
  
  protected Integer a(Context... paramVarArgs) {
    Log.i("[DATABLINK]", "Datablink M200 Embedded Api v3.2.52");
    this.c = false;
    this.d = false;
    this.e = false;
    this.g = null;
    try {
      this.h = paramVarArgs[0].getApplicationContext();
      try {
        String str = dz.b(paramVarArgs[0]);
        if (str == null) {
          this.f = 902;
          return Integer.valueOf(0);
        } 
      } catch (Exception exception) {
        this.f = 902;
        exception.printStackTrace();
        this.e = true;
        this.g = exception;
        return Integer.valueOf(0);
      } 
    } catch (Exception exception) {
      this.f = 901;
      exception.printStackTrace();
      return Integer.valueOf(0);
    } 
  }
  
  protected void a(Integer paramInteger) {
    if (this.e) {
      dr.b(this.a).a(this.g);
      return;
    } 
    if (this.b) {
      dr.b(this.a).a();
      return;
    } 
    if (this.d) {
      if (this.c) {
        a();
        dr.b(this.a).b();
      } 
      dr.b(this.a).a(this.a.b);
    } else {
      dr.b(this.a).b();
      dr.b(this.a).a(this.f, this.a.b);
    } 
    dr.a(this.a, (dt)null);
    dr.a(this.a, (List)null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */