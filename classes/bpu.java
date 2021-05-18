import android.util.Log;
import java.util.HashMap;

public class bpu {
  public static final String a = "FacebookSDK.";
  
  private static final HashMap<String, String> b = new HashMap<String, String>();
  
  private final bjb c;
  
  private final String d;
  
  private StringBuilder e;
  
  private int f = 3;
  
  public bpu(bjb parambjb, String paramString) {
    bqx.a(paramString, "tag");
    this.c = parambjb;
    this.d = "FacebookSDK." + paramString;
    this.e = new StringBuilder();
  }
  
  public static void a(bjb parambjb, int paramInt, String paramString1, String paramString2) {
    if (bhv.c(parambjb)) {
      String str = d(paramString2);
      paramString2 = paramString1;
      if (!paramString1.startsWith("FacebookSDK."))
        paramString2 = "FacebookSDK." + paramString1; 
      Log.println(paramInt, paramString2, str);
      if (parambjb == bjb.DEVELOPER_ERRORS)
        (new Exception()).printStackTrace(); 
    } 
  }
  
  public static void a(bjb parambjb, int paramInt, String paramString1, String paramString2, Object... paramVarArgs) {
    if (bhv.c(parambjb))
      a(parambjb, paramInt, paramString1, String.format(paramString2, paramVarArgs)); 
  }
  
  public static void a(bjb parambjb, String paramString1, String paramString2) {
    a(parambjb, 3, paramString1, paramString2);
  }
  
  public static void a(bjb parambjb, String paramString1, String paramString2, Object... paramVarArgs) {
    if (bhv.c(parambjb))
      a(parambjb, 3, paramString1, String.format(paramString2, paramVarArgs)); 
  }
  
  public static void a(String paramString) {
    // Byte code:
    //   0: ldc bpu
    //   2: monitorenter
    //   3: getstatic bjb.INCLUDE_ACCESS_TOKENS : Lbjb;
    //   6: invokestatic c : (Lbjb;)Z
    //   9: ifne -> 18
    //   12: aload_0
    //   13: ldc 'ACCESS_TOKEN_REMOVED'
    //   15: invokestatic a : (Ljava/lang/String;Ljava/lang/String;)V
    //   18: ldc bpu
    //   20: monitorexit
    //   21: return
    //   22: astore_0
    //   23: ldc bpu
    //   25: monitorexit
    //   26: aload_0
    //   27: athrow
    // Exception table:
    //   from	to	target	type
    //   3	18	22	finally
  }
  
  public static void a(String paramString1, String paramString2) {
    // Byte code:
    //   0: ldc bpu
    //   2: monitorenter
    //   3: getstatic bpu.b : Ljava/util/HashMap;
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   11: pop
    //   12: ldc bpu
    //   14: monitorexit
    //   15: return
    //   16: astore_0
    //   17: ldc bpu
    //   19: monitorexit
    //   20: aload_0
    //   21: athrow
    // Exception table:
    //   from	to	target	type
    //   3	12	16	finally
  }
  
  private static String d(String paramString) {
    // Byte code:
    //   0: ldc bpu
    //   2: monitorenter
    //   3: getstatic bpu.b : Ljava/util/HashMap;
    //   6: invokevirtual entrySet : ()Ljava/util/Set;
    //   9: invokeinterface iterator : ()Ljava/util/Iterator;
    //   14: astore_1
    //   15: aload_1
    //   16: invokeinterface hasNext : ()Z
    //   21: ifeq -> 60
    //   24: aload_1
    //   25: invokeinterface next : ()Ljava/lang/Object;
    //   30: checkcast java/util/Map$Entry
    //   33: astore_2
    //   34: aload_0
    //   35: aload_2
    //   36: invokeinterface getKey : ()Ljava/lang/Object;
    //   41: checkcast java/lang/CharSequence
    //   44: aload_2
    //   45: invokeinterface getValue : ()Ljava/lang/Object;
    //   50: checkcast java/lang/CharSequence
    //   53: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   56: astore_0
    //   57: goto -> 15
    //   60: ldc bpu
    //   62: monitorexit
    //   63: aload_0
    //   64: areturn
    //   65: astore_0
    //   66: ldc bpu
    //   68: monitorexit
    //   69: aload_0
    //   70: athrow
    // Exception table:
    //   from	to	target	type
    //   3	15	65	finally
    //   15	57	65	finally
  }
  
  private boolean d() {
    return bhv.c(this.c);
  }
  
  public int a() {
    return this.f;
  }
  
  public void a(int paramInt) {
    bqx.a(Integer.valueOf(paramInt), "value", new Object[] { Integer.valueOf(7), Integer.valueOf(3), Integer.valueOf(6), Integer.valueOf(4), Integer.valueOf(2), Integer.valueOf(5) });
    this.f = paramInt;
  }
  
  public void a(String paramString, Object paramObject) {
    a("  %s:\t%s\n", new Object[] { paramString, paramObject });
  }
  
  public void a(String paramString, Object... paramVarArgs) {
    if (d())
      this.e.append(String.format(paramString, paramVarArgs)); 
  }
  
  public void a(StringBuilder paramStringBuilder) {
    if (d())
      this.e.append(paramStringBuilder); 
  }
  
  public String b() {
    return d(this.e.toString());
  }
  
  public void b(String paramString) {
    a(this.c, this.f, this.d, paramString);
  }
  
  public void c() {
    b(this.e.toString());
    this.e = new StringBuilder();
  }
  
  public void c(String paramString) {
    if (d())
      this.e.append(paramString); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */