import java.util.List;

public class cge extends cgg<cik> {
  private float j = 0.85F;
  
  public cge() {}
  
  public cge(List<cik> paramList) {
    super(paramList);
  }
  
  public cge(cik... paramVarArgs) {
    super(paramVarArgs);
  }
  
  public float a() {
    return this.j;
  }
  
  public float a(float paramFloat1, float paramFloat2) {
    return this.i.size() * (this.j + paramFloat2) + paramFloat1;
  }
  
  public void a(float paramFloat) {
    this.j = paramFloat;
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3) {
    // Byte code:
    //   0: aload_0
    //   1: getfield i : Ljava/util/List;
    //   4: invokeinterface size : ()I
    //   9: iconst_1
    //   10: if_icmpgt -> 23
    //   13: new java/lang/RuntimeException
    //   16: dup
    //   17: ldc 'BarData needs to hold at least 2 BarDataSets to allow grouping.'
    //   19: invokespecial <init> : (Ljava/lang/String;)V
    //   22: athrow
    //   23: aload_0
    //   24: invokevirtual o : ()Lcio;
    //   27: checkcast cik
    //   30: invokeinterface I : ()I
    //   35: istore #9
    //   37: fload_2
    //   38: fconst_2
    //   39: fdiv
    //   40: fstore #4
    //   42: fload_3
    //   43: fconst_2
    //   44: fdiv
    //   45: fstore #5
    //   47: aload_0
    //   48: getfield j : F
    //   51: fconst_2
    //   52: fdiv
    //   53: fstore #6
    //   55: aload_0
    //   56: fload_2
    //   57: fload_3
    //   58: invokevirtual a : (FF)F
    //   61: fstore_3
    //   62: iconst_0
    //   63: istore #8
    //   65: iload #8
    //   67: iload #9
    //   69: if_icmpge -> 208
    //   72: aload_0
    //   73: getfield i : Ljava/util/List;
    //   76: invokeinterface iterator : ()Ljava/util/Iterator;
    //   81: astore #10
    //   83: fload_1
    //   84: fload #4
    //   86: fadd
    //   87: fstore_2
    //   88: aload #10
    //   90: invokeinterface hasNext : ()Z
    //   95: ifeq -> 166
    //   98: aload #10
    //   100: invokeinterface next : ()Ljava/lang/Object;
    //   105: checkcast cik
    //   108: astore #11
    //   110: fload_2
    //   111: fload #5
    //   113: fadd
    //   114: fload #6
    //   116: fadd
    //   117: fstore_2
    //   118: iload #8
    //   120: aload #11
    //   122: invokeinterface I : ()I
    //   127: if_icmpge -> 155
    //   130: aload #11
    //   132: iload #8
    //   134: invokeinterface m : (I)Lcom/github/mikephil/charting/data/Entry;
    //   139: checkcast com/github/mikephil/charting/data/BarEntry
    //   142: astore #11
    //   144: aload #11
    //   146: ifnull -> 155
    //   149: aload #11
    //   151: fload_2
    //   152: invokevirtual f : (F)V
    //   155: fload_2
    //   156: fload #6
    //   158: fadd
    //   159: fload #5
    //   161: fadd
    //   162: fstore_2
    //   163: goto -> 88
    //   166: fload_2
    //   167: fload #4
    //   169: fadd
    //   170: fstore_2
    //   171: fload_3
    //   172: fload_2
    //   173: fload_1
    //   174: fsub
    //   175: fsub
    //   176: fstore #7
    //   178: fload #7
    //   180: fconst_0
    //   181: fcmpl
    //   182: ifgt -> 194
    //   185: fload_2
    //   186: fstore_1
    //   187: fload #7
    //   189: fconst_0
    //   190: fcmpg
    //   191: ifge -> 199
    //   194: fload_2
    //   195: fload #7
    //   197: fadd
    //   198: fstore_1
    //   199: iload #8
    //   201: iconst_1
    //   202: iadd
    //   203: istore #8
    //   205: goto -> 65
    //   208: aload_0
    //   209: invokevirtual b : ()V
    //   212: return
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */