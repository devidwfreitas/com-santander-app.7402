import java.util.Hashtable;

public class av implements cm {
  private static final byte a = 54;
  
  private static final byte b = 92;
  
  private static Hashtable h = new Hashtable<Object, Object>();
  
  private ck c;
  
  private int d;
  
  private int e;
  
  private byte[] f;
  
  private byte[] g;
  
  static {
    h.put("GOST3411", new Integer(32));
    h.put("MD2", new Integer(16));
    h.put("MD4", new Integer(64));
    h.put("MD5", new Integer(64));
    h.put("RIPEMD128", new Integer(64));
    h.put("RIPEMD160", new Integer(64));
    h.put("SHA-1", new Integer(64));
    h.put("SHA-224", new Integer(64));
    h.put("SHA-256", new Integer(64));
    h.put("SHA-384", new Integer(128));
    h.put("SHA-512", new Integer(128));
    h.put("Tiger", new Integer(64));
    h.put("Whirlpool", new Integer(64));
  }
  
  public av(ck paramck) {
    this(paramck, a(paramck));
  }
  
  private av(ck paramck, int paramInt) {
    this.c = paramck;
    this.d = paramck.b();
    this.e = paramInt;
    this.f = new byte[this.e];
    this.g = new byte[this.e];
  }
  
  private static int a(ck paramck) {
    if (paramck instanceof cl)
      return ((cl)paramck).e(); 
    Integer integer = (Integer)h.get(paramck.a());
    if (integer == null)
      throw new IllegalArgumentException("unknown digest passed: " + paramck.a()); 
    return integer.intValue();
  }
  
  public int a(byte[] paramArrayOfbyte, int paramInt) {
    byte[] arrayOfByte = new byte[this.d];
    this.c.b(arrayOfByte, 0);
    this.c.a(this.g, 0, this.g.length);
    this.c.a(arrayOfByte, 0, arrayOfByte.length);
    paramInt = this.c.b(paramArrayOfbyte, paramInt);
    d();
    return paramInt;
  }
  
  public String a() {
    return String.valueOf(this.c.a()) + "/HMAC";
  }
  
  public void a(byte paramByte) {
    this.c.a(paramByte);
  }
  
  public void a(ci paramci) {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Lck;
    //   4: invokeinterface c : ()V
    //   9: aload_1
    //   10: checkcast aw
    //   13: invokevirtual a : ()[B
    //   16: astore_1
    //   17: aload_1
    //   18: arraylength
    //   19: aload_0
    //   20: getfield e : I
    //   23: if_icmple -> 153
    //   26: aload_0
    //   27: getfield c : Lck;
    //   30: aload_1
    //   31: iconst_0
    //   32: aload_1
    //   33: arraylength
    //   34: invokeinterface a : ([BII)V
    //   39: aload_0
    //   40: getfield c : Lck;
    //   43: aload_0
    //   44: getfield f : [B
    //   47: iconst_0
    //   48: invokeinterface b : ([BI)I
    //   53: pop
    //   54: aload_0
    //   55: getfield d : I
    //   58: istore_2
    //   59: iload_2
    //   60: aload_0
    //   61: getfield f : [B
    //   64: arraylength
    //   65: if_icmplt -> 139
    //   68: aload_0
    //   69: aload_0
    //   70: getfield f : [B
    //   73: arraylength
    //   74: newarray byte
    //   76: putfield g : [B
    //   79: aload_0
    //   80: getfield f : [B
    //   83: iconst_0
    //   84: aload_0
    //   85: getfield g : [B
    //   88: iconst_0
    //   89: aload_0
    //   90: getfield f : [B
    //   93: arraylength
    //   94: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   97: iconst_0
    //   98: istore_2
    //   99: iload_2
    //   100: aload_0
    //   101: getfield f : [B
    //   104: arraylength
    //   105: if_icmplt -> 191
    //   108: iconst_0
    //   109: istore_2
    //   110: iload_2
    //   111: aload_0
    //   112: getfield g : [B
    //   115: arraylength
    //   116: if_icmplt -> 213
    //   119: aload_0
    //   120: getfield c : Lck;
    //   123: aload_0
    //   124: getfield f : [B
    //   127: iconst_0
    //   128: aload_0
    //   129: getfield f : [B
    //   132: arraylength
    //   133: invokeinterface a : ([BII)V
    //   138: return
    //   139: aload_0
    //   140: getfield f : [B
    //   143: iload_2
    //   144: iconst_0
    //   145: bastore
    //   146: iload_2
    //   147: iconst_1
    //   148: iadd
    //   149: istore_2
    //   150: goto -> 59
    //   153: aload_1
    //   154: iconst_0
    //   155: aload_0
    //   156: getfield f : [B
    //   159: iconst_0
    //   160: aload_1
    //   161: arraylength
    //   162: invokestatic arraycopy : (Ljava/lang/Object;ILjava/lang/Object;II)V
    //   165: aload_1
    //   166: arraylength
    //   167: istore_2
    //   168: iload_2
    //   169: aload_0
    //   170: getfield f : [B
    //   173: arraylength
    //   174: if_icmpge -> 68
    //   177: aload_0
    //   178: getfield f : [B
    //   181: iload_2
    //   182: iconst_0
    //   183: bastore
    //   184: iload_2
    //   185: iconst_1
    //   186: iadd
    //   187: istore_2
    //   188: goto -> 168
    //   191: aload_0
    //   192: getfield f : [B
    //   195: astore_1
    //   196: aload_1
    //   197: iload_2
    //   198: aload_1
    //   199: iload_2
    //   200: baload
    //   201: bipush #54
    //   203: ixor
    //   204: i2b
    //   205: bastore
    //   206: iload_2
    //   207: iconst_1
    //   208: iadd
    //   209: istore_2
    //   210: goto -> 99
    //   213: aload_0
    //   214: getfield g : [B
    //   217: astore_1
    //   218: aload_1
    //   219: iload_2
    //   220: aload_1
    //   221: iload_2
    //   222: baload
    //   223: bipush #92
    //   225: ixor
    //   226: i2b
    //   227: bastore
    //   228: iload_2
    //   229: iconst_1
    //   230: iadd
    //   231: istore_2
    //   232: goto -> 110
  }
  
  public void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    this.c.a(paramArrayOfbyte, paramInt1, paramInt2);
  }
  
  public ck b() {
    return this.c;
  }
  
  public int c() {
    return this.d;
  }
  
  public void d() {
    this.c.c();
    this.c.a(this.f, 0, this.f.length);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */