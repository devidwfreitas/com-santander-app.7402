import android.graphics.Canvas;
import android.graphics.Paint;

public abstract class cjl extends cke {
  protected cfj a;
  
  protected cle b;
  
  protected Paint c;
  
  protected Paint d;
  
  protected Paint e;
  
  protected Paint f;
  
  public cjl(clh paramclh, cle paramcle, cfj paramcfj) {
    super(paramclh);
    this.b = paramcle;
    this.a = paramcfj;
    if (this.s != null) {
      this.d = new Paint(1);
      this.c = new Paint();
      this.c.setColor(-7829368);
      this.c.setStrokeWidth(1.0F);
      this.c.setStyle(Paint.Style.STROKE);
      this.c.setAlpha(90);
      this.e = new Paint();
      this.e.setColor(-16777216);
      this.e.setStrokeWidth(1.0F);
      this.e.setStyle(Paint.Style.STROKE);
      this.f = new Paint(1);
      this.f.setStyle(Paint.Style.STROKE);
    } 
  }
  
  public Paint a() {
    return this.d;
  }
  
  protected void a(float paramFloat1, float paramFloat2) {
    // Byte code:
    //   0: aload_0
    //   1: getfield a : Lcfj;
    //   4: invokevirtual j : ()I
    //   7: istore #12
    //   9: fload_2
    //   10: fload_1
    //   11: fsub
    //   12: invokestatic abs : (F)F
    //   15: f2d
    //   16: dstore #7
    //   18: iload #12
    //   20: ifeq -> 38
    //   23: dload #7
    //   25: dconst_0
    //   26: dcmpg
    //   27: ifle -> 38
    //   30: dload #7
    //   32: invokestatic isInfinite : (D)Z
    //   35: ifeq -> 67
    //   38: aload_0
    //   39: getfield a : Lcfj;
    //   42: iconst_0
    //   43: newarray float
    //   45: putfield b : [F
    //   48: aload_0
    //   49: getfield a : Lcfj;
    //   52: iconst_0
    //   53: newarray float
    //   55: putfield c : [F
    //   58: aload_0
    //   59: getfield a : Lcfj;
    //   62: iconst_0
    //   63: putfield d : I
    //   66: return
    //   67: dload #7
    //   69: iload #12
    //   71: i2d
    //   72: ddiv
    //   73: invokestatic a : (D)F
    //   76: f2d
    //   77: dstore #5
    //   79: dload #5
    //   81: dstore_3
    //   82: aload_0
    //   83: getfield a : Lcfj;
    //   86: invokevirtual k : ()Z
    //   89: ifeq -> 118
    //   92: dload #5
    //   94: dstore_3
    //   95: dload #5
    //   97: aload_0
    //   98: getfield a : Lcfj;
    //   101: invokevirtual l : ()F
    //   104: f2d
    //   105: dcmpg
    //   106: ifge -> 118
    //   109: aload_0
    //   110: getfield a : Lcfj;
    //   113: invokevirtual l : ()F
    //   116: f2d
    //   117: dstore_3
    //   118: ldc2_w 10.0
    //   121: dload_3
    //   122: invokestatic log10 : (D)D
    //   125: d2i
    //   126: i2d
    //   127: invokestatic pow : (DD)D
    //   130: invokestatic a : (D)F
    //   133: f2d
    //   134: dstore #9
    //   136: dload_3
    //   137: dstore #5
    //   139: dload_3
    //   140: dload #9
    //   142: ddiv
    //   143: d2i
    //   144: iconst_5
    //   145: if_icmple -> 159
    //   148: ldc2_w 10.0
    //   151: dload #9
    //   153: dmul
    //   154: invokestatic floor : (D)D
    //   157: dstore #5
    //   159: aload_0
    //   160: getfield a : Lcfj;
    //   163: invokevirtual c : ()Z
    //   166: ifeq -> 264
    //   169: iconst_1
    //   170: istore #11
    //   172: aload_0
    //   173: getfield a : Lcfj;
    //   176: invokevirtual i : ()Z
    //   179: ifeq -> 379
    //   182: dload #7
    //   184: d2f
    //   185: iload #12
    //   187: iconst_1
    //   188: isub
    //   189: i2f
    //   190: fdiv
    //   191: f2d
    //   192: dstore #7
    //   194: aload_0
    //   195: getfield a : Lcfj;
    //   198: iload #12
    //   200: putfield d : I
    //   203: aload_0
    //   204: getfield a : Lcfj;
    //   207: getfield b : [F
    //   210: arraylength
    //   211: iload #12
    //   213: if_icmpge -> 227
    //   216: aload_0
    //   217: getfield a : Lcfj;
    //   220: iload #12
    //   222: newarray float
    //   224: putfield b : [F
    //   227: iconst_0
    //   228: istore #11
    //   230: iload #11
    //   232: iload #12
    //   234: if_icmpge -> 270
    //   237: aload_0
    //   238: getfield a : Lcfj;
    //   241: getfield b : [F
    //   244: iload #11
    //   246: fload_1
    //   247: fastore
    //   248: fload_1
    //   249: f2d
    //   250: dload #7
    //   252: dadd
    //   253: d2f
    //   254: fstore_1
    //   255: iload #11
    //   257: iconst_1
    //   258: iadd
    //   259: istore #11
    //   261: goto -> 230
    //   264: iconst_0
    //   265: istore #11
    //   267: goto -> 172
    //   270: iload #12
    //   272: istore #11
    //   274: dload #7
    //   276: dconst_1
    //   277: dcmpg
    //   278: ifge -> 586
    //   281: aload_0
    //   282: getfield a : Lcfj;
    //   285: dload #7
    //   287: invokestatic log10 : (D)D
    //   290: dneg
    //   291: invokestatic ceil : (D)D
    //   294: d2i
    //   295: putfield e : I
    //   298: aload_0
    //   299: getfield a : Lcfj;
    //   302: invokevirtual c : ()Z
    //   305: ifeq -> 66
    //   308: aload_0
    //   309: getfield a : Lcfj;
    //   312: getfield c : [F
    //   315: arraylength
    //   316: iload #11
    //   318: if_icmpge -> 332
    //   321: aload_0
    //   322: getfield a : Lcfj;
    //   325: iload #11
    //   327: newarray float
    //   329: putfield c : [F
    //   332: dload #7
    //   334: d2f
    //   335: fconst_2
    //   336: fdiv
    //   337: fstore_1
    //   338: iconst_0
    //   339: istore #12
    //   341: iload #12
    //   343: iload #11
    //   345: if_icmpge -> 66
    //   348: aload_0
    //   349: getfield a : Lcfj;
    //   352: getfield c : [F
    //   355: iload #12
    //   357: aload_0
    //   358: getfield a : Lcfj;
    //   361: getfield b : [F
    //   364: iload #12
    //   366: faload
    //   367: fload_1
    //   368: fadd
    //   369: fastore
    //   370: iload #12
    //   372: iconst_1
    //   373: iadd
    //   374: istore #12
    //   376: goto -> 341
    //   379: dload #5
    //   381: dconst_0
    //   382: dcmpl
    //   383: ifne -> 460
    //   386: dconst_0
    //   387: dstore #7
    //   389: dload #7
    //   391: dstore_3
    //   392: aload_0
    //   393: getfield a : Lcfj;
    //   396: invokevirtual c : ()Z
    //   399: ifeq -> 408
    //   402: dload #7
    //   404: dload #5
    //   406: dsub
    //   407: dstore_3
    //   408: dload #5
    //   410: dconst_0
    //   411: dcmpl
    //   412: ifne -> 476
    //   415: dconst_0
    //   416: dstore #7
    //   418: iload #11
    //   420: istore #12
    //   422: dload #5
    //   424: dconst_0
    //   425: dcmpl
    //   426: ifeq -> 495
    //   429: dload_3
    //   430: dstore #9
    //   432: iload #11
    //   434: istore #12
    //   436: dload #9
    //   438: dload #7
    //   440: dcmpg
    //   441: ifgt -> 495
    //   444: dload #9
    //   446: dload #5
    //   448: dadd
    //   449: dstore #9
    //   451: iload #11
    //   453: iconst_1
    //   454: iadd
    //   455: istore #11
    //   457: goto -> 432
    //   460: fload_1
    //   461: f2d
    //   462: dload #5
    //   464: ddiv
    //   465: invokestatic ceil : (D)D
    //   468: dload #5
    //   470: dmul
    //   471: dstore #7
    //   473: goto -> 389
    //   476: fload_2
    //   477: f2d
    //   478: dload #5
    //   480: ddiv
    //   481: invokestatic floor : (D)D
    //   484: dload #5
    //   486: dmul
    //   487: invokestatic b : (D)D
    //   490: dstore #7
    //   492: goto -> 418
    //   495: aload_0
    //   496: getfield a : Lcfj;
    //   499: iload #12
    //   501: putfield d : I
    //   504: aload_0
    //   505: getfield a : Lcfj;
    //   508: getfield b : [F
    //   511: arraylength
    //   512: iload #12
    //   514: if_icmpge -> 528
    //   517: aload_0
    //   518: getfield a : Lcfj;
    //   521: iload #12
    //   523: newarray float
    //   525: putfield b : [F
    //   528: iconst_0
    //   529: istore #13
    //   531: dload #5
    //   533: dstore #7
    //   535: iload #12
    //   537: istore #11
    //   539: iload #13
    //   541: iload #12
    //   543: if_icmpge -> 274
    //   546: dload_3
    //   547: dstore #7
    //   549: dload_3
    //   550: dconst_0
    //   551: dcmpl
    //   552: ifne -> 558
    //   555: dconst_0
    //   556: dstore #7
    //   558: aload_0
    //   559: getfield a : Lcfj;
    //   562: getfield b : [F
    //   565: iload #13
    //   567: dload #7
    //   569: d2f
    //   570: fastore
    //   571: dload #7
    //   573: dload #5
    //   575: dadd
    //   576: dstore_3
    //   577: iload #13
    //   579: iconst_1
    //   580: iadd
    //   581: istore #13
    //   583: goto -> 531
    //   586: aload_0
    //   587: getfield a : Lcfj;
    //   590: iconst_0
    //   591: putfield e : I
    //   594: goto -> 298
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (this.s != null) {
      f2 = paramFloat1;
      f1 = paramFloat2;
      if (this.s.j() > 10.0F) {
        f2 = paramFloat1;
        f1 = paramFloat2;
        if (!this.s.B()) {
          ckz ckz1 = this.b.a(this.s.g(), this.s.f());
          ckz ckz2 = this.b.a(this.s.g(), this.s.i());
          if (!paramBoolean) {
            paramFloat1 = (float)ckz2.b;
            paramFloat2 = (float)ckz1.b;
          } else {
            paramFloat1 = (float)ckz1.b;
            paramFloat2 = (float)ckz2.b;
          } 
          ckz.a(ckz1);
          ckz.a(ckz2);
          f1 = paramFloat2;
          f2 = paramFloat1;
        } 
      } 
    } 
    a(f2, f1);
  }
  
  public abstract void a(Canvas paramCanvas);
  
  public Paint b() {
    return this.c;
  }
  
  public abstract void b(Canvas paramCanvas);
  
  public Paint c() {
    return this.e;
  }
  
  public abstract void c(Canvas paramCanvas);
  
  public cle d() {
    return this.b;
  }
  
  public abstract void d(Canvas paramCanvas);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */