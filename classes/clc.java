import java.util.List;

public class clc<T extends cld> {
  private static int a = 0;
  
  private int b;
  
  private int c;
  
  private Object[] d;
  
  private int e;
  
  private T f;
  
  private float g;
  
  private clc(int paramInt, T paramT) {
    if (paramInt <= 0)
      throw new IllegalArgumentException("Object Pool must be instantiated with a capacity greater than 0!"); 
    this.c = paramInt;
    this.d = new Object[this.c];
    this.e = 0;
    this.f = paramT;
    this.g = 1.0F;
    f();
  }
  
  public static clc a(int paramInt, cld paramcld) {
    // Byte code:
    //   0: ldc clc
    //   2: monitorenter
    //   3: new clc
    //   6: dup
    //   7: iload_0
    //   8: aload_1
    //   9: invokespecial <init> : (ILcld;)V
    //   12: astore_1
    //   13: aload_1
    //   14: getstatic clc.a : I
    //   17: putfield b : I
    //   20: getstatic clc.a : I
    //   23: iconst_1
    //   24: iadd
    //   25: putstatic clc.a : I
    //   28: ldc clc
    //   30: monitorexit
    //   31: aload_1
    //   32: areturn
    //   33: astore_1
    //   34: ldc clc
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Exception table:
    //   from	to	target	type
    //   3	28	33	finally
  }
  
  private void b(float paramFloat) {
    int i = 1;
    int j = (int)(this.c * paramFloat);
    if (j >= 1)
      if (j > this.c) {
        i = this.c;
      } else {
        i = j;
      }  
    for (j = 0; j < i; j++)
      this.d[j] = this.f.b(); 
    this.e = i - 1;
  }
  
  private void f() {
    b(this.g);
  }
  
  private void g() {
    int j = this.c;
    this.c *= 2;
    Object[] arrayOfObject = new Object[this.c];
    for (int i = 0; i < j; i++)
      arrayOfObject[i] = this.d[i]; 
    this.d = arrayOfObject;
  }
  
  public int a() {
    return this.b;
  }
  
  public void a(float paramFloat) {
    float f;
    if (paramFloat > 1.0F) {
      f = 1.0F;
    } else {
      f = paramFloat;
      if (paramFloat < 0.0F)
        f = 0.0F; 
    } 
    this.g = f;
  }
  
  public void a(T paramT) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: getfield s : I
    //   6: getstatic cld.r : I
    //   9: if_icmpeq -> 73
    //   12: aload_1
    //   13: getfield s : I
    //   16: aload_0
    //   17: getfield b : I
    //   20: if_icmpne -> 38
    //   23: new java/lang/IllegalArgumentException
    //   26: dup
    //   27: ldc 'The object passed is already stored in this pool!'
    //   29: invokespecial <init> : (Ljava/lang/String;)V
    //   32: athrow
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    //   38: new java/lang/IllegalArgumentException
    //   41: dup
    //   42: new java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial <init> : ()V
    //   49: ldc 'The object to recycle already belongs to poolId '
    //   51: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload_1
    //   55: getfield s : I
    //   58: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   61: ldc '.  Object cannot belong to two different pool instances simultaneously!'
    //   63: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual toString : ()Ljava/lang/String;
    //   69: invokespecial <init> : (Ljava/lang/String;)V
    //   72: athrow
    //   73: aload_0
    //   74: aload_0
    //   75: getfield e : I
    //   78: iconst_1
    //   79: iadd
    //   80: putfield e : I
    //   83: aload_0
    //   84: getfield e : I
    //   87: aload_0
    //   88: getfield d : [Ljava/lang/Object;
    //   91: arraylength
    //   92: if_icmplt -> 99
    //   95: aload_0
    //   96: invokespecial g : ()V
    //   99: aload_1
    //   100: aload_0
    //   101: getfield b : I
    //   104: putfield s : I
    //   107: aload_0
    //   108: getfield d : [Ljava/lang/Object;
    //   111: aload_0
    //   112: getfield e : I
    //   115: aload_1
    //   116: aastore
    //   117: aload_0
    //   118: monitorexit
    //   119: return
    // Exception table:
    //   from	to	target	type
    //   2	33	33	finally
    //   38	73	33	finally
    //   73	99	33	finally
    //   99	117	33	finally
  }
  
  public void a(List<T> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokeinterface size : ()I
    //   8: aload_0
    //   9: getfield e : I
    //   12: iadd
    //   13: iconst_1
    //   14: iadd
    //   15: aload_0
    //   16: getfield c : I
    //   19: if_icmple -> 34
    //   22: aload_0
    //   23: invokespecial g : ()V
    //   26: goto -> 2
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    //   34: aload_1
    //   35: invokeinterface size : ()I
    //   40: istore_3
    //   41: iconst_0
    //   42: istore_2
    //   43: iload_2
    //   44: iload_3
    //   45: if_icmpge -> 160
    //   48: aload_1
    //   49: iload_2
    //   50: invokeinterface get : (I)Ljava/lang/Object;
    //   55: checkcast cld
    //   58: astore #4
    //   60: aload #4
    //   62: getfield s : I
    //   65: getstatic cld.r : I
    //   68: if_icmpeq -> 129
    //   71: aload #4
    //   73: getfield s : I
    //   76: aload_0
    //   77: getfield b : I
    //   80: if_icmpne -> 93
    //   83: new java/lang/IllegalArgumentException
    //   86: dup
    //   87: ldc 'The object passed is already stored in this pool!'
    //   89: invokespecial <init> : (Ljava/lang/String;)V
    //   92: athrow
    //   93: new java/lang/IllegalArgumentException
    //   96: dup
    //   97: new java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial <init> : ()V
    //   104: ldc 'The object to recycle already belongs to poolId '
    //   106: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: aload #4
    //   111: getfield s : I
    //   114: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   117: ldc '.  Object cannot belong to two different pool instances simultaneously!'
    //   119: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual toString : ()Ljava/lang/String;
    //   125: invokespecial <init> : (Ljava/lang/String;)V
    //   128: athrow
    //   129: aload #4
    //   131: aload_0
    //   132: getfield b : I
    //   135: putfield s : I
    //   138: aload_0
    //   139: getfield d : [Ljava/lang/Object;
    //   142: aload_0
    //   143: getfield e : I
    //   146: iconst_1
    //   147: iadd
    //   148: iload_2
    //   149: iadd
    //   150: aload #4
    //   152: aastore
    //   153: iload_2
    //   154: iconst_1
    //   155: iadd
    //   156: istore_2
    //   157: goto -> 43
    //   160: aload_0
    //   161: aload_0
    //   162: getfield e : I
    //   165: iload_3
    //   166: iadd
    //   167: putfield e : I
    //   170: aload_0
    //   171: monitorexit
    //   172: return
    // Exception table:
    //   from	to	target	type
    //   2	26	29	finally
    //   34	41	29	finally
    //   48	93	29	finally
    //   93	129	29	finally
    //   129	153	29	finally
    //   160	170	29	finally
  }
  
  public float b() {
    return this.g;
  }
  
  public T c() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : I
    //   6: iconst_m1
    //   7: if_icmpne -> 23
    //   10: aload_0
    //   11: getfield g : F
    //   14: fconst_0
    //   15: fcmpl
    //   16: ifle -> 23
    //   19: aload_0
    //   20: invokespecial f : ()V
    //   23: aload_0
    //   24: getfield d : [Ljava/lang/Object;
    //   27: aload_0
    //   28: getfield e : I
    //   31: aaload
    //   32: checkcast cld
    //   35: astore_1
    //   36: aload_1
    //   37: getstatic cld.r : I
    //   40: putfield s : I
    //   43: aload_0
    //   44: aload_0
    //   45: getfield e : I
    //   48: iconst_1
    //   49: isub
    //   50: putfield e : I
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: areturn
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Exception table:
    //   from	to	target	type
    //   2	23	57	finally
    //   23	53	57	finally
  }
  
  public int d() {
    return this.d.length;
  }
  
  public int e() {
    return this.e + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */