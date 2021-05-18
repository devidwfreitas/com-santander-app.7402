import java.util.List;

public class kpq {
  @eks(a = "name")
  private String a;
  
  @eks(a = "capital")
  private String b;
  
  @eks(a = "cities")
  private List<kpr> c;
  
  public static String a(String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: new java/util/ArrayList
    //   3: dup
    //   4: new ejm
    //   7: dup
    //   8: invokespecial <init> : ()V
    //   11: aload_0
    //   12: ldc [Lkpq;
    //   14: invokevirtual a : (Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   17: checkcast [Ljava/lang/Object;
    //   20: invokestatic asList : ([Ljava/lang/Object;)Ljava/util/List;
    //   23: invokespecial <init> : (Ljava/util/Collection;)V
    //   26: invokeinterface iterator : ()Ljava/util/Iterator;
    //   31: astore_0
    //   32: aload_0
    //   33: invokeinterface hasNext : ()Z
    //   38: ifeq -> 129
    //   41: aload_0
    //   42: invokeinterface next : ()Ljava/lang/Object;
    //   47: checkcast kpq
    //   50: astore_3
    //   51: aload_3
    //   52: getfield a : Ljava/lang/String;
    //   55: aload_1
    //   56: invokevirtual equals : (Ljava/lang/Object;)Z
    //   59: ifeq -> 32
    //   62: aload_3
    //   63: getfield c : Ljava/util/List;
    //   66: invokeinterface iterator : ()Ljava/util/Iterator;
    //   71: astore_0
    //   72: aload_0
    //   73: invokeinterface hasNext : ()Z
    //   78: ifeq -> 123
    //   81: aload_0
    //   82: invokeinterface next : ()Ljava/lang/Object;
    //   87: checkcast kpr
    //   90: astore_1
    //   91: aload_1
    //   92: invokestatic a : (Lkpr;)Ljava/lang/String;
    //   95: aload_2
    //   96: invokevirtual equals : (Ljava/lang/Object;)Z
    //   99: ifeq -> 72
    //   102: aload_1
    //   103: invokestatic b : (Lkpr;)Ljava/lang/String;
    //   106: astore_0
    //   107: aload_0
    //   108: astore_1
    //   109: aload_0
    //   110: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   113: ifeq -> 121
    //   116: aload_3
    //   117: getfield b : Ljava/lang/String;
    //   120: astore_1
    //   121: aload_1
    //   122: areturn
    //   123: ldc ''
    //   125: astore_0
    //   126: goto -> 107
    //   129: ldc ''
    //   131: areturn
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kpq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */