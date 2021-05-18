import java.util.Calendar;
import java.util.List;
import java.util.Map;

public class aca {
  private static aca a = null;
  
  private ach b;
  
  private ou c;
  
  private ji d;
  
  private tp e;
  
  private Boolean f;
  
  private Map<Integer, Map<Integer, List<Integer>>> g;
  
  public static aca a() {
    // Byte code:
    //   0: ldc aca
    //   2: monitorenter
    //   3: getstatic aca.a : Laca;
    //   6: ifnonnull -> 28
    //   9: new aca
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic aca.a : Laca;
    //   19: getstatic aca.a : Laca;
    //   22: getstatic ach.USER_SANTANDER : Lach;
    //   25: invokespecial a : (Lach;)V
    //   28: getstatic aca.a : Laca;
    //   31: astore_0
    //   32: ldc aca
    //   34: monitorexit
    //   35: aload_0
    //   36: areturn
    //   37: astore_0
    //   38: ldc aca
    //   40: monitorexit
    //   41: aload_0
    //   42: athrow
    // Exception table:
    //   from	to	target	type
    //   3	28	37	finally
    //   28	32	37	finally
  }
  
  private void a(ach paramach) {
    this.b = paramach;
  }
  
  public void a(int paramInt) {
    if (paramInt == ach.USER_SANTANDER.getValue()) {
      a(ach.USER_SANTANDER);
      return;
    } 
    if (paramInt == ach.USER_PRIVATE.getValue()) {
      a(ach.USER_PRIVATE);
      return;
    } 
    if (paramInt == ach.USER_JOVEM_PROFISSIONAL.getValue()) {
      a(ach.USER_JOVEM_PROFISSIONAL);
      return;
    } 
    if (paramInt == ach.USER_SELECT.getValue()) {
      a(ach.USER_SELECT);
      return;
    } 
    if (paramInt == ach.USER_UNIVERSIDADES.getValue()) {
      a(ach.USER_UNIVERSIDADES);
      return;
    } 
    if (paramInt == ach.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.getValue()) {
      a(ach.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
      return;
    } 
    if (paramInt == ach.USER_VAN_GOGH.getValue()) {
      a(ach.USER_VAN_GOGH);
      return;
    } 
    if (paramInt == ach.USER_VAN_GOGH_UNIVERSIDADES.getValue()) {
      a(ach.USER_VAN_GOGH_UNIVERSIDADES);
      return;
    } 
    a(ach.USER_SANTANDER);
  }
  
  public void a(Boolean paramBoolean) {
    this.f = paramBoolean;
  }
  
  public void a(String paramString) {
    try {
      int i = Integer.parseInt(paramString);
      if (i > 0) {
        a(i);
        return;
      } 
    } catch (NumberFormatException numberFormatException) {
      byte b = -1;
      if (b > 0) {
        a(b);
        return;
      } 
    } 
    if (paramString.equals(ach.USER_SANTANDER.toString())) {
      a(ach.USER_SANTANDER);
      return;
    } 
    if (paramString.equals(ach.USER_PRIVATE.toString())) {
      a(ach.USER_PRIVATE);
      return;
    } 
    if (paramString.equals(ach.USER_JOVEM_PROFISSIONAL.toString())) {
      a(ach.USER_JOVEM_PROFISSIONAL);
      return;
    } 
    if (paramString.equals(ach.USER_SELECT.toString())) {
      a(ach.USER_SELECT);
      return;
    } 
    if (paramString.equals(ach.USER_UNIVERSIDADES.toString())) {
      a(ach.USER_UNIVERSIDADES);
      return;
    } 
    if (paramString.equals(ach.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL.toString())) {
      a(ach.USER_UNIVERSIDADES_JOVEM_PROFISSIONAL);
      return;
    } 
    if (paramString.equals(ach.USER_VAN_GOGH.toString())) {
      a(ach.USER_VAN_GOGH);
      return;
    } 
    if (paramString.equals(ach.USER_VAN_GOGH_UNIVERSIDADES.toString())) {
      a(ach.USER_VAN_GOGH_UNIVERSIDADES);
      return;
    } 
    a(ach.USER_SANTANDER);
  }
  
  public void a(List<tl> paramList) {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface iterator : ()Ljava/util/Iterator;
    //   6: astore_3
    //   7: aconst_null
    //   8: astore_2
    //   9: aload_3
    //   10: invokeinterface hasNext : ()Z
    //   15: ifeq -> 225
    //   18: aload_3
    //   19: invokeinterface next : ()Ljava/lang/Object;
    //   24: checkcast tl
    //   27: astore #4
    //   29: aload_2
    //   30: astore_1
    //   31: aload_2
    //   32: ifnonnull -> 43
    //   35: new java/util/HashMap
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: astore_1
    //   43: aload_1
    //   44: astore_2
    //   45: new java/util/ArrayList
    //   48: dup
    //   49: invokespecial <init> : ()V
    //   52: astore #5
    //   54: aload_1
    //   55: astore_2
    //   56: aload #4
    //   58: invokevirtual c : ()Ltc;
    //   61: invokevirtual a : ()Ljava/util/List;
    //   64: invokeinterface iterator : ()Ljava/util/Iterator;
    //   69: astore #6
    //   71: aload_1
    //   72: astore_2
    //   73: aload #6
    //   75: invokeinterface hasNext : ()Z
    //   80: ifeq -> 112
    //   83: aload_1
    //   84: astore_2
    //   85: aload #5
    //   87: aload #6
    //   89: invokeinterface next : ()Ljava/lang/Object;
    //   94: checkcast java/lang/String
    //   97: invokestatic parseInt : (Ljava/lang/String;)I
    //   100: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   103: invokeinterface add : (Ljava/lang/Object;)Z
    //   108: pop
    //   109: goto -> 71
    //   112: aload_1
    //   113: astore_2
    //   114: new java/util/HashMap
    //   117: dup
    //   118: invokespecial <init> : ()V
    //   121: astore #6
    //   123: aload_1
    //   124: astore_2
    //   125: aload #6
    //   127: aload #4
    //   129: invokevirtual a : ()Ljava/lang/String;
    //   132: invokestatic parseInt : (Ljava/lang/String;)I
    //   135: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   138: aload #5
    //   140: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   145: pop
    //   146: aload_1
    //   147: astore_2
    //   148: aload_1
    //   149: aload #4
    //   151: invokevirtual b : ()Ljava/lang/String;
    //   154: invokestatic parseInt : (Ljava/lang/String;)I
    //   157: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   160: invokeinterface containsKey : (Ljava/lang/Object;)Z
    //   165: ifeq -> 200
    //   168: aload_1
    //   169: astore_2
    //   170: aload_1
    //   171: aload #4
    //   173: invokevirtual b : ()Ljava/lang/String;
    //   176: invokestatic parseInt : (Ljava/lang/String;)I
    //   179: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   182: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   187: checkcast java/util/Map
    //   190: aload #6
    //   192: invokeinterface putAll : (Ljava/util/Map;)V
    //   197: goto -> 239
    //   200: aload_1
    //   201: astore_2
    //   202: aload_1
    //   203: aload #4
    //   205: invokevirtual b : ()Ljava/lang/String;
    //   208: invokestatic parseInt : (Ljava/lang/String;)I
    //   211: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   214: aload #6
    //   216: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   221: pop
    //   222: goto -> 239
    //   225: aload_0
    //   226: aload_2
    //   227: putfield g : Ljava/util/Map;
    //   230: return
    //   231: astore_1
    //   232: aload_2
    //   233: astore_1
    //   234: aload_1
    //   235: astore_2
    //   236: goto -> 9
    //   239: goto -> 234
    // Exception table:
    //   from	to	target	type
    //   35	43	231	java/lang/Exception
    //   45	54	231	java/lang/Exception
    //   56	71	231	java/lang/Exception
    //   73	83	231	java/lang/Exception
    //   85	109	231	java/lang/Exception
    //   114	123	231	java/lang/Exception
    //   125	146	231	java/lang/Exception
    //   148	168	231	java/lang/Exception
    //   170	197	231	java/lang/Exception
    //   202	222	231	java/lang/Exception
  }
  
  public void a(ji paramji) {
    this.d = paramji;
  }
  
  public void a(ou paramou) {
    this.c = paramou;
  }
  
  public void a(tp paramtp) {
    this.e = paramtp;
  }
  
  public boolean a(Calendar paramCalendar) {
    int i = paramCalendar.get(5);
    int j = paramCalendar.get(2) + 1;
    int k = paramCalendar.get(1);
    return (this.g.containsKey(Integer.valueOf(k)) && ((Map)this.g.get(Integer.valueOf(k))).containsKey(Integer.valueOf(j)) && ((List)((Map)this.g.get(Integer.valueOf(k))).get(Integer.valueOf(j))).contains(Integer.valueOf(i)));
  }
  
  public ach b() {
    return this.b;
  }
  
  public ou c() {
    return this.c;
  }
  
  public void d() {
    a = null;
  }
  
  public ji e() {
    return this.d;
  }
  
  public tp f() {
    return this.e;
  }
  
  public Boolean g() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */