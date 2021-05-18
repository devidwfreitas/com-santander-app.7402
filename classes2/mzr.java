import android.util.Log;
import com.santander.app.MinhaConta;

public class mzr {
  public static boolean a() {
    return (o() || (miq.C().f().h() != null && miq.C().f().h().equals("2")));
  }
  
  public static boolean b() {
    return hau.a().i().booleanValue();
  }
  
  public static String c() {
    String str = "";
    if (miq.C().f().i() != null)
      str = miq.C().f().i(); 
    try {
      boolean bool = MinhaConta.b().getResources().getBoolean(2131492869);
      if (!bool)
        return str; 
    } catch (Exception exception) {
      Log.e("SecurityUtil", "GetSegmento", exception);
      boolean bool = false;
      if (!bool)
        return str; 
    } 
    return "SE";
  }
  
  public static int d() {
    // Byte code:
    //   0: ldc ''
    //   2: astore_1
    //   3: invokestatic C : ()Lmiq;
    //   6: invokevirtual f : ()Lmir;
    //   9: invokevirtual i : ()Ljava/lang/String;
    //   12: ifnull -> 25
    //   15: invokestatic C : ()Lmiq;
    //   18: invokevirtual f : ()Lmir;
    //   21: invokevirtual i : ()Ljava/lang/String;
    //   24: astore_1
    //   25: invokestatic b : ()Landroid/content/Context;
    //   28: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   31: ldc 2131492869
    //   33: invokevirtual getBoolean : (I)Z
    //   36: istore_0
    //   37: iload_0
    //   38: ifne -> 136
    //   41: aload_1
    //   42: ldc 'SE'
    //   44: invokevirtual equals : (Ljava/lang/Object;)Z
    //   47: ifeq -> 67
    //   50: iconst_3
    //   51: ireturn
    //   52: astore_2
    //   53: ldc 'SecurityUtil'
    //   55: ldc 'GetSegmento'
    //   57: aload_2
    //   58: invokestatic e : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   61: pop
    //   62: iconst_0
    //   63: istore_0
    //   64: goto -> 37
    //   67: aload_1
    //   68: ldc 'VG'
    //   70: invokevirtual equals : (Ljava/lang/Object;)Z
    //   73: ifeq -> 78
    //   76: iconst_2
    //   77: ireturn
    //   78: aload_1
    //   79: ldc 'PR'
    //   81: invokevirtual equals : (Ljava/lang/Object;)Z
    //   84: ifeq -> 90
    //   87: bipush #8
    //   89: ireturn
    //   90: aload_1
    //   91: ldc 'UN'
    //   93: invokevirtual equals : (Ljava/lang/Object;)Z
    //   96: ifeq -> 101
    //   99: iconst_4
    //   100: ireturn
    //   101: aload_1
    //   102: ldc 'VGUN'
    //   104: invokevirtual equals : (Ljava/lang/Object;)Z
    //   107: ifeq -> 112
    //   110: iconst_5
    //   111: ireturn
    //   112: aload_1
    //   113: ldc 'JP'
    //   115: invokevirtual equals : (Ljava/lang/Object;)Z
    //   118: ifeq -> 124
    //   121: bipush #6
    //   123: ireturn
    //   124: aload_1
    //   125: ldc 'UNJP'
    //   127: invokevirtual equals : (Ljava/lang/Object;)Z
    //   130: ifeq -> 138
    //   133: bipush #7
    //   135: ireturn
    //   136: iconst_3
    //   137: ireturn
    //   138: iconst_1
    //   139: ireturn
    // Exception table:
    //   from	to	target	type
    //   25	37	52	java/lang/Exception
  }
  
  public static String e() {
    return (miq.C().f().f() != null) ? miq.C().f().f() : "";
  }
  
  public static String f() {
    return (miq.C().f().g() != null) ? miq.C().f().g() : "";
  }
  
  public static String g() {
    return (miq.C().f().j() != null) ? miq.C().f().j() : "";
  }
  
  public static String h() {
    return "0033";
  }
  
  public static String i() {
    return "";
  }
  
  public static String j() {
    return (miq.C().f().y().b() != null) ? miq.C().f().y().b().b() : "";
  }
  
  public static String k() {
    return (miq.C().f().y().b() != null) ? miq.C().f().y().b().c() : "";
  }
  
  public static String l() {
    return (miq.C().f().y().b() != null) ? miq.C().f().y().b().a() : "";
  }
  
  public static String m() {
    return miq.C().f().k();
  }
  
  public static String n() {
    try {
      return (new naf()).a(miq.C().f().k());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  private static boolean o() {
    return hau.a().B().booleanValue();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */