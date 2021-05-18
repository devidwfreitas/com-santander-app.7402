import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.RectF;
import java.util.List;

public class ckk extends ckj {
  protected Path q = new Path();
  
  protected Path r = new Path();
  
  protected float[] t = new float[4];
  
  public ckk(clh paramclh, cgb paramcgb, cle paramcle) {
    super(paramclh, paramcgb, paramcle);
    this.f.setTextAlign(Paint.Align.LEFT);
  }
  
  protected Path a(Path paramPath, int paramInt, float[] paramArrayOffloat) {
    paramPath.moveTo(paramArrayOffloat[paramInt], this.s.f());
    paramPath.lineTo(paramArrayOffloat[paramInt], this.s.i());
    return paramPath;
  }
  
  public void a(float paramFloat1, float paramFloat2, boolean paramBoolean) {
    float f2 = paramFloat1;
    float f1 = paramFloat2;
    if (this.s.k() > 10.0F) {
      f2 = paramFloat1;
      f1 = paramFloat2;
      if (!this.s.C()) {
        ckz ckz1 = this.b.a(this.s.g(), this.s.f());
        ckz ckz2 = this.b.a(this.s.h(), this.s.f());
        if (!paramBoolean) {
          paramFloat1 = (float)ckz1.a;
          paramFloat2 = (float)ckz2.a;
        } else {
          paramFloat1 = (float)ckz2.a;
          paramFloat2 = (float)ckz1.a;
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
    float[] arrayOfFloat = f();
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
    this.d.setTextAlign(Paint.Align.CENTER);
    float f1 = clg.a(2.5F);
    float f2 = clg.b(this.d, "Q");
    cgc cgc = this.g.L();
    cgd cgd = this.g.O();
    if (cgc == cgc.LEFT) {
      if (cgd == cgd.OUTSIDE_CHART) {
        f1 = this.s.f() - f1;
      } else {
        f1 = this.s.f() - f1;
      } 
    } else if (cgd == cgd.OUTSIDE_CHART) {
      f1 += f2 + this.s.i();
    } else {
      f1 += f2 + this.s.i();
    } 
    a(paramCanvas, f1, arrayOfFloat, this.g.G());
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float[] paramArrayOffloat, float paramFloat2) {
    int i;
    int j;
    this.d.setTypeface(this.g.H());
    this.d.setTextSize(this.g.I());
    this.d.setColor(this.g.J());
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
      paramCanvas.drawText(this.g.d(i), paramArrayOffloat[i * 2], paramFloat1 - paramFloat2, this.d);
      i++;
    } 
  }
  
  public void c(Canvas paramCanvas) {
    if (!this.g.K() || !this.g.b())
      return; 
    this.e.setColor(this.g.g());
    this.e.setStrokeWidth(this.g.e());
    if (this.g.L() == cgc.LEFT) {
      paramCanvas.drawLine(this.s.g(), this.s.f(), this.s.h(), this.s.f(), this.e);
      return;
    } 
    paramCanvas.drawLine(this.s.g(), this.s.i(), this.s.h(), this.s.i(), this.e);
  }
  
  public void d(Canvas paramCanvas) {
    List<cfw> list = this.g.n();
    if (list != null && list.size() > 0) {
      float[] arrayOfFloat = this.t;
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 0.0F;
      arrayOfFloat[2] = 0.0F;
      arrayOfFloat[3] = 0.0F;
      Path path = this.r;
      path.reset();
      int i = 0;
      while (true) {
        if (i < list.size()) {
          cfw cfw = list.get(i);
          if (cfw.K()) {
            int j = paramCanvas.save();
            this.p.set(this.s.l());
            this.p.inset(-cfw.b(), 0.0F);
            paramCanvas.clipRect(this.p);
            arrayOfFloat[0] = cfw.a();
            arrayOfFloat[2] = cfw.a();
            this.b.a(arrayOfFloat);
            arrayOfFloat[1] = this.s.f();
            arrayOfFloat[3] = this.s.i();
            path.moveTo(arrayOfFloat[0], arrayOfFloat[1]);
            path.lineTo(arrayOfFloat[2], arrayOfFloat[3]);
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setColor(cfw.c());
            this.f.setPathEffect((PathEffect)cfw.f());
            this.f.setStrokeWidth(cfw.b());
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
              float f1 = cfw.b() + cfw.F();
              float f2 = clg.a(2.0F) + cfw.G();
              cfx cfx = cfw.h();
              if (cfx == cfx.RIGHT_TOP) {
                float f = clg.b(this.f, str);
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, f1 + arrayOfFloat[0], f + f2 + this.s.f(), this.f);
              } else if (cfx == cfx.RIGHT_BOTTOM) {
                this.f.setTextAlign(Paint.Align.LEFT);
                paramCanvas.drawText(str, arrayOfFloat[0] + f1, this.s.i() - f2, this.f);
              } else if (cfx == cfx.LEFT_TOP) {
                this.f.setTextAlign(Paint.Align.RIGHT);
                float f = clg.b(this.f, str);
                paramCanvas.drawText(str, arrayOfFloat[0] - f1, f + f2 + this.s.f(), this.f);
              } else {
                this.f.setTextAlign(Paint.Align.RIGHT);
                paramCanvas.drawText(str, arrayOfFloat[0] - f1, this.s.i() - f2, this.f);
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
    this.j.inset(-this.a.f(), 0.0F);
    return this.j;
  }
  
  protected void e(Canvas paramCanvas) {
    int i = paramCanvas.save();
    this.m.set(this.s.l());
    this.m.inset(-this.g.W(), 0.0F);
    paramCanvas.clipRect(this.p);
    ckz ckz = this.b.b(0.0F, 0.0F);
    this.h.setColor(this.g.V());
    this.h.setStrokeWidth(this.g.W());
    Path path = this.q;
    path.reset();
    path.moveTo((float)ckz.a - 1.0F, this.s.f());
    path.lineTo((float)ckz.a - 1.0F, this.s.i());
    paramCanvas.drawPath(path, this.h);
    paramCanvas.restoreToCount(i);
  }
  
  protected float[] f() {
    if (this.k.length != this.g.d * 2)
      this.k = new float[this.g.d * 2]; 
    float[] arrayOfFloat = this.k;
    for (int i = 0; i < arrayOfFloat.length; i += 2)
      arrayOfFloat[i] = this.g.b[i / 2]; 
    this.b.a(arrayOfFloat);
    return arrayOfFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */