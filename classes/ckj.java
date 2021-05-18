import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.RectF;
import java.util.List;

public class ckj extends cjl {
  protected cgb g;
  
  protected Paint h;
  
  protected Path i = new Path();
  
  protected RectF j = new RectF();
  
  protected float[] k = new float[2];
  
  protected Path l = new Path();
  
  protected RectF m = new RectF();
  
  protected Path n = new Path();
  
  protected float[] o = new float[2];
  
  protected RectF p = new RectF();
  
  public ckj(clh paramclh, cgb paramcgb, cle paramcle) {
    super(paramclh, paramcle, paramcgb);
    this.g = paramcgb;
    if (this.s != null) {
      this.d.setColor(-16777216);
      this.d.setTextSize(clg.a(10.0F));
      this.h = new Paint(1);
      this.h.setColor(-7829368);
      this.h.setStrokeWidth(1.0F);
      this.h.setStyle(Paint.Style.STROKE);
    } 
  }
  
  protected Path a(Path paramPath, int paramInt, float[] paramArrayOffloat) {
    paramPath.moveTo(this.s.b(), paramArrayOffloat[paramInt + 1]);
    paramPath.lineTo(this.s.h(), paramArrayOffloat[paramInt + 1]);
    return paramPath;
  }
  
  public void a(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.h())
      return; 
    float[] arrayOfFloat = f();
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    float f1 = this.g.F();
    float f2 = clg.b(this.d, "A") / 2.5F;
    float f3 = this.g.G();
    cgc cgc = this.g.L();
    cgd cgd = this.g.O();
    if (cgc == cgc.LEFT) {
      if (cgd == cgd.OUTSIDE_CHART) {
        this.d.setTextAlign(Paint.Align.RIGHT);
        f1 = this.s.b() - f1;
      } else {
        this.d.setTextAlign(Paint.Align.LEFT);
        f1 += this.s.b();
      } 
    } else if (cgd == cgd.OUTSIDE_CHART) {
      this.d.setTextAlign(Paint.Align.LEFT);
      f1 += this.s.h();
    } else {
      this.d.setTextAlign(Paint.Align.RIGHT);
      f1 = this.s.h() - f1;
    } 
    a(paramCanvas, f1, arrayOfFloat, f2 + f3);
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float[] paramArrayOffloat, float paramFloat2) {
    int i;
    int j;
    if (this.g.Q()) {
      i = 0;
    } else {
      i = 1;
    } 
    if (this.g.P()) {
      j = this.g.d;
    } else {
      j = this.g.d - 1;
    } 
    while (i < j) {
      paramCanvas.drawText(this.g.d(i), paramFloat1, paramArrayOffloat[i * 2 + 1] + paramFloat2, this.d);
      i++;
    } 
  }
  
  public void b(Canvas paramCanvas) {
    if (this.g.K()) {
      if (this.g.a()) {
        int j = paramCanvas.save();
        paramCanvas.clipRect(e());
        float[] arrayOfFloat = f();
        this.c.setColor(this.g.d());
        this.c.setStrokeWidth(this.g.f());
        this.c.setPathEffect((PathEffect)this.g.t());
        Path path = this.i;
        path.reset();
        for (int i = 0; i < arrayOfFloat.length; i += 2) {
          paramCanvas.drawPath(a(path, i, arrayOfFloat), this.c);
          path.reset();
        } 
        paramCanvas.restoreToCount(j);
      } 
      if (this.g.U()) {
        e(paramCanvas);
        return;
      } 
    } 
  }
  
  public void c(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.b())
      return; 
    this.e.setColor(this.g.g());
    this.e.setStrokeWidth(this.g.e());
    if (this.g.L() == cgc.LEFT) {
      paramCanvas.drawLine(this.s.g(), this.s.f(), this.s.g(), this.s.i(), this.e);
      return;
    } 
    paramCanvas.drawLine(this.s.h(), this.s.f(), this.s.h(), this.s.i(), this.e);
  }
  
  public void d(Canvas paramCanvas) {
    List<cfw> list = this.g.n();
    if (list != null && list.size() > 0) {
      float[] arrayOfFloat = this.o;
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 0.0F;
      Path path = this.n;
      path.reset();
      int i = 0;
      while (true) {
        if (i < list.size()) {
          cfw cfw = list.get(i);
          if (cfw.K()) {
            int j = paramCanvas.save();
            this.p.set(this.s.l());
            this.p.inset(0.0F, -cfw.b());
            paramCanvas.clipRect(this.p);
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setColor(cfw.c());
            this.f.setStrokeWidth(cfw.b());
            this.f.setPathEffect((PathEffect)cfw.f());
            arrayOfFloat[1] = cfw.a();
            this.b.a(arrayOfFloat);
            path.moveTo(this.s.g(), arrayOfFloat[1]);
            path.lineTo(this.s.h(), arrayOfFloat[1]);
            paramCanvas.drawPath(path, this.f);
            path.reset();
            String str = cfw.i();
            if (str != null && !str.equals("")) {
              this.f.setStyle(cfw.g());
              this.f.setPathEffect(null);
              this.f.setColor(cfw.J());
              this.f.setTypeface(cfw.H());
              this.f.setStrokeWidth(0.5F);
              this.f.setTextSize(cfw.I());
              float f1 = clg.b(this.f, str);
              float f2 = clg.a(4.0F) + cfw.F();
              float f3 = cfw.b() + f1 + cfw.G();
              cfx cfx = cfw.h();
              if (cfx == cfx.RIGHT_TOP) {
                this.f.setTextAlign(Paint.Align.RIGHT);
                paramCanvas.drawText(str, this.s.h() - f2, f1 + arrayOfFloat[1] - f3, this.f);
              } else if (cfx == cfx.RIGHT_BOTTOM) {
                this.f.setTextAlign(Paint.Align.RIGHT);
                paramCanvas.drawText(str, this.s.h() - f2, arrayOfFloat[1] + f3, this.f);
              } else if (cfx == cfx.LEFT_TOP) {
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, this.s.g() + f2, f1 + arrayOfFloat[1] - f3, this.f);
              } else {
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, this.s.b() + f2, arrayOfFloat[1] + f3, this.f);
              } 
            } 
            paramCanvas.restoreToCount(j);
          } 
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public RectF e() {
    this.j.set(this.s.l());
    this.j.inset(0.0F, -this.a.f());
    return this.j;
  }
  
  protected void e(Canvas paramCanvas) {
    int i = paramCanvas.save();
    this.m.set(this.s.l());
    this.m.inset(0.0F, -this.g.W());
    paramCanvas.clipRect(this.m);
    ckz ckz = this.b.b(0.0F, 0.0F);
    this.h.setColor(this.g.V());
    this.h.setStrokeWidth(this.g.W());
    Path path = this.l;
    path.reset();
    path.moveTo(this.s.g(), (float)ckz.b);
    path.lineTo(this.s.h(), (float)ckz.b);
    paramCanvas.drawPath(path, this.h);
    paramCanvas.restoreToCount(i);
  }
  
  protected float[] f() {
    if (this.k.length != this.g.d * 2)
      this.k = new float[this.g.d * 2]; 
    float[] arrayOfFloat = this.k;
    for (int i = 0; i < arrayOfFloat.length; i += 2)
      arrayOfFloat[i + 1] = this.g.b[i / 2]; 
    this.b.a(arrayOfFloat);
    return arrayOfFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */