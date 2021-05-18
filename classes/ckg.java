import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.RectF;
import java.util.List;

public class ckg extends cjl {
  protected cfz g;
  
  protected Path h = new Path();
  
  protected float[] i = new float[2];
  
  protected RectF j = new RectF();
  
  protected float[] k = new float[2];
  
  protected RectF l = new RectF();
  
  float[] m = new float[4];
  
  private Path n = new Path();
  
  public ckg(clh paramclh, cfz paramcfz, cle paramcle) {
    super(paramclh, paramcle, paramcfz);
    this.g = paramcfz;
    this.d.setColor(-16777216);
    this.d.setTextAlign(Paint.Align.CENTER);
    this.d.setTextSize(clg.a(10.0F));
  }
  
  protected void a(float paramFloat1, float paramFloat2) {
    super.a(paramFloat1, paramFloat2);
    f();
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (this.s.j() > 10.0F) {
      f2 = paramFloat1;
      f1 = paramFloat2;
      if (!this.s.C()) {
        ckz ckz1 = this.b.a(this.s.g(), this.s.f());
        ckz ckz2 = this.b.a(this.s.h(), this.s.f());
        if (paramBoolean) {
          paramFloat1 = (float)ckz2.a;
          paramFloat2 = (float)ckz1.a;
        } else {
          paramFloat1 = (float)ckz1.a;
          paramFloat2 = (float)ckz2.a;
        } 
        ckz.a(ckz1);
        ckz.a(ckz2);
        f1 = paramFloat2;
        f2 = paramFloat1;
      } 
    } 
    a(f2, f1);
  }
  
  public void a(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.h())
      return; 
    float f = this.g.G();
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    cla cla = cla.a(0.0F, 0.0F);
    if (this.g.L() == cga.TOP) {
      cla.a = 0.5F;
      cla.b = 1.0F;
      a(paramCanvas, this.s.f() - f, cla);
    } else if (this.g.L() == cga.TOP_INSIDE) {
      cla.a = 0.5F;
      cla.b = 1.0F;
      a(paramCanvas, f + this.s.f() + this.g.E, cla);
    } else if (this.g.L() == cga.BOTTOM) {
      cla.a = 0.5F;
      cla.b = 0.0F;
      a(paramCanvas, f + this.s.i(), cla);
    } else if (this.g.L() == cga.BOTTOM_INSIDE) {
      cla.a = 0.5F;
      cla.b = 0.0F;
      a(paramCanvas, this.s.i() - f - this.g.E, cla);
    } else {
      cla.a = 0.5F;
      cla.b = 1.0F;
      a(paramCanvas, this.s.f() - f, cla);
      cla.a = 0.5F;
      cla.b = 0.0F;
      a(paramCanvas, f + this.s.i(), cla);
    } 
    cla.a(cla);
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, Path paramPath) {
    paramPath.moveTo(paramFloat1, this.s.i());
    paramPath.lineTo(paramFloat1, this.s.f());
    paramCanvas.drawPath(paramPath, this.c);
    paramPath.reset();
  }
  
  protected void a(Canvas paramCanvas, float paramFloat, cla paramcla) {
    // Byte code:
    //   0: aload_0
    //   1: getfield g : Lcfz;
    //   4: invokevirtual M : ()F
    //   7: fstore #6
    //   9: aload_0
    //   10: getfield g : Lcfz;
    //   13: invokevirtual c : ()Z
    //   16: istore #9
    //   18: aload_0
    //   19: getfield g : Lcfz;
    //   22: getfield d : I
    //   25: iconst_2
    //   26: imul
    //   27: newarray float
    //   29: astore #10
    //   31: iconst_0
    //   32: istore #8
    //   34: iload #8
    //   36: aload #10
    //   38: arraylength
    //   39: if_icmpge -> 93
    //   42: iload #9
    //   44: ifeq -> 73
    //   47: aload #10
    //   49: iload #8
    //   51: aload_0
    //   52: getfield g : Lcfz;
    //   55: getfield c : [F
    //   58: iload #8
    //   60: iconst_2
    //   61: idiv
    //   62: faload
    //   63: fastore
    //   64: iload #8
    //   66: iconst_2
    //   67: iadd
    //   68: istore #8
    //   70: goto -> 34
    //   73: aload #10
    //   75: iload #8
    //   77: aload_0
    //   78: getfield g : Lcfz;
    //   81: getfield b : [F
    //   84: iload #8
    //   86: iconst_2
    //   87: idiv
    //   88: faload
    //   89: fastore
    //   90: goto -> 64
    //   93: aload_0
    //   94: getfield b : Lcle;
    //   97: aload #10
    //   99: invokevirtual a : ([F)V
    //   102: iconst_0
    //   103: istore #8
    //   105: iload #8
    //   107: aload #10
    //   109: arraylength
    //   110: if_icmpge -> 304
    //   113: aload #10
    //   115: iload #8
    //   117: faload
    //   118: fstore #5
    //   120: aload_0
    //   121: getfield s : Lclh;
    //   124: fload #5
    //   126: invokevirtual e : (F)Z
    //   129: ifeq -> 270
    //   132: aload_0
    //   133: getfield g : Lcfz;
    //   136: invokevirtual q : ()Lchl;
    //   139: aload_0
    //   140: getfield g : Lcfz;
    //   143: getfield b : [F
    //   146: iload #8
    //   148: iconst_2
    //   149: idiv
    //   150: faload
    //   151: aload_0
    //   152: getfield g : Lcfz;
    //   155: invokeinterface a : (FLcfj;)Ljava/lang/String;
    //   160: astore #11
    //   162: aload_0
    //   163: getfield g : Lcfz;
    //   166: invokevirtual N : ()Z
    //   169: ifeq -> 305
    //   172: iload #8
    //   174: aload_0
    //   175: getfield g : Lcfz;
    //   178: getfield d : I
    //   181: iconst_1
    //   182: isub
    //   183: if_icmpne -> 279
    //   186: aload_0
    //   187: getfield g : Lcfz;
    //   190: getfield d : I
    //   193: iconst_1
    //   194: if_icmple -> 279
    //   197: aload_0
    //   198: getfield d : Landroid/graphics/Paint;
    //   201: aload #11
    //   203: invokestatic a : (Landroid/graphics/Paint;Ljava/lang/String;)I
    //   206: i2f
    //   207: fstore #7
    //   209: fload #5
    //   211: fstore #4
    //   213: fload #7
    //   215: aload_0
    //   216: getfield s : Lclh;
    //   219: invokevirtual c : ()F
    //   222: fconst_2
    //   223: fmul
    //   224: fcmpl
    //   225: ifle -> 257
    //   228: fload #5
    //   230: fstore #4
    //   232: fload #5
    //   234: fload #7
    //   236: fadd
    //   237: aload_0
    //   238: getfield s : Lclh;
    //   241: invokevirtual o : ()F
    //   244: fcmpl
    //   245: ifle -> 257
    //   248: fload #5
    //   250: fload #7
    //   252: fconst_2
    //   253: fdiv
    //   254: fsub
    //   255: fstore #4
    //   257: aload_0
    //   258: aload_1
    //   259: aload #11
    //   261: fload #4
    //   263: fload_2
    //   264: aload_3
    //   265: fload #6
    //   267: invokevirtual a : (Landroid/graphics/Canvas;Ljava/lang/String;FFLcla;F)V
    //   270: iload #8
    //   272: iconst_2
    //   273: iadd
    //   274: istore #8
    //   276: goto -> 105
    //   279: iload #8
    //   281: ifne -> 305
    //   284: fload #5
    //   286: aload_0
    //   287: getfield d : Landroid/graphics/Paint;
    //   290: aload #11
    //   292: invokestatic a : (Landroid/graphics/Paint;Ljava/lang/String;)I
    //   295: i2f
    //   296: fconst_2
    //   297: fdiv
    //   298: fadd
    //   299: fstore #4
    //   301: goto -> 257
    //   304: return
    //   305: fload #5
    //   307: fstore #4
    //   309: goto -> 257
  }
  
  public void a(Canvas paramCanvas, cfw paramcfw, float[] paramArrayOffloat) {
    this.m[0] = paramArrayOffloat[0];
    this.m[1] = this.s.f();
    this.m[2] = paramArrayOffloat[0];
    this.m[3] = this.s.i();
    this.n.reset();
    this.n.moveTo(this.m[0], this.m[1]);
    this.n.lineTo(this.m[2], this.m[3]);
    this.f.setStyle(Paint.Style.STROKE);
    this.f.setColor(paramcfw.c());
    this.f.setStrokeWidth(paramcfw.b());
    this.f.setPathEffect((PathEffect)paramcfw.f());
    paramCanvas.drawPath(this.n, this.f);
  }
  
  public void a(Canvas paramCanvas, cfw paramcfw, float[] paramArrayOffloat, float paramFloat) {
    cfx cfx;
    float f;
    String str = paramcfw.i();
    if (str != null && !str.equals("")) {
      this.f.setStyle(paramcfw.g());
      this.f.setPathEffect(null);
      this.f.setColor(paramcfw.J());
      this.f.setStrokeWidth(0.5F);
      this.f.setTextSize(paramcfw.I());
      f = paramcfw.b() + paramcfw.F();
      cfx = paramcfw.h();
      if (cfx == cfx.RIGHT_TOP) {
        float f1 = clg.b(this.f, str);
        this.f.setTextAlign(Paint.Align.LEFT);
        paramCanvas.drawText(str, f + paramArrayOffloat[0], f1 + this.s.f() + paramFloat, this.f);
        return;
      } 
    } else {
      return;
    } 
    if (cfx == cfx.RIGHT_BOTTOM) {
      this.f.setTextAlign(Paint.Align.LEFT);
      paramCanvas.drawText(str, f + paramArrayOffloat[0], this.s.i() - paramFloat, this.f);
      return;
    } 
    if (cfx == cfx.LEFT_TOP) {
      this.f.setTextAlign(Paint.Align.RIGHT);
      float f1 = clg.b(this.f, str);
      paramCanvas.drawText(str, paramArrayOffloat[0] - f, f1 + this.s.f() + paramFloat, this.f);
      return;
    } 
    this.f.setTextAlign(Paint.Align.RIGHT);
    paramCanvas.drawText(str, paramArrayOffloat[0] - f, this.s.i() - paramFloat, this.f);
  }
  
  protected void a(Canvas paramCanvas, String paramString, float paramFloat1, float paramFloat2, cla paramcla, float paramFloat3) {
    clg.a(paramCanvas, paramString, paramFloat1, paramFloat2, this.d, paramcla, paramFloat3);
  }
  
  public void b(Canvas paramCanvas) {
    boolean bool = false;
    if (!this.g.a() || !this.g.K())
      return; 
    int j = paramCanvas.save();
    paramCanvas.clipRect(g());
    if (this.i.length != this.a.d * 2)
      this.i = new float[this.g.d * 2]; 
    float[] arrayOfFloat = this.i;
    int i;
    for (i = 0; i < arrayOfFloat.length; i += 2) {
      arrayOfFloat[i] = this.g.b[i / 2];
      arrayOfFloat[i + 1] = this.g.b[i / 2];
    } 
    this.b.a(arrayOfFloat);
    e();
    Path path = this.h;
    path.reset();
    for (i = bool; i < arrayOfFloat.length; i += 2)
      a(paramCanvas, arrayOfFloat[i], arrayOfFloat[i + 1], path); 
    paramCanvas.restoreToCount(j);
  }
  
  public void c(Canvas paramCanvas) {
    if (this.g.b() && this.g.K()) {
      this.e.setColor(this.g.g());
      this.e.setStrokeWidth(this.g.e());
      this.e.setPathEffect((PathEffect)this.g.w());
      if (this.g.L() == cga.TOP || this.g.L() == cga.TOP_INSIDE || this.g.L() == cga.BOTH_SIDED)
        paramCanvas.drawLine(this.s.g(), this.s.f(), this.s.h(), this.s.f(), this.e); 
      if (this.g.L() == cga.BOTTOM || this.g.L() == cga.BOTTOM_INSIDE || this.g.L() == cga.BOTH_SIDED) {
        paramCanvas.drawLine(this.s.g(), this.s.i(), this.s.h(), this.s.i(), this.e);
        return;
      } 
    } 
  }
  
  public void d(Canvas paramCanvas) {
    List<cfw> list = this.g.n();
    if (list != null && list.size() > 0) {
      float[] arrayOfFloat = this.k;
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 0.0F;
      int i = 0;
      while (true) {
        if (i < list.size()) {
          cfw cfw = list.get(i);
          if (cfw.K()) {
            int j = paramCanvas.save();
            this.l.set(this.s.l());
            this.l.inset(-cfw.b(), 0.0F);
            paramCanvas.clipRect(this.l);
            arrayOfFloat[0] = cfw.a();
            arrayOfFloat[1] = 0.0F;
            this.b.a(arrayOfFloat);
            a(paramCanvas, cfw, arrayOfFloat);
            a(paramCanvas, cfw, arrayOfFloat, 2.0F + cfw.G());
            paramCanvas.restoreToCount(j);
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  protected void e() {
    this.c.setColor(this.g.d());
    this.c.setStrokeWidth(this.g.f());
    this.c.setPathEffect((PathEffect)this.g.t());
  }
  
  protected void f() {
    String str = this.g.p();
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    ckw ckw1 = clg.c(this.d, str);
    float f1 = ckw1.a;
    float f2 = clg.b(this.d, "Q");
    ckw ckw2 = clg.a(f1, f2, this.g.M());
    this.g.B = Math.round(f1);
    this.g.C = Math.round(f2);
    this.g.D = Math.round(ckw2.a);
    this.g.E = Math.round(ckw2.b);
    ckw.a(ckw2);
    ckw.a(ckw1);
  }
  
  public RectF g() {
    this.j.set(this.s.l());
    this.j.inset(-this.a.f(), 0.0F);
    return this.j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */