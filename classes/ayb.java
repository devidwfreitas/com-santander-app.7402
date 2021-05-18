import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public abstract class ayb implements ayg, ayz {
  final Paint a = new Paint(1);
  
  private final PathMeasure b = new PathMeasure();
  
  private final Path c = new Path();
  
  private final Path d = new Path();
  
  private final RectF e = new RectF();
  
  private final awu f;
  
  private final List<ayd> g = new ArrayList<ayd>();
  
  private final float[] h;
  
  private final ayy<?, Float> i;
  
  private final ayy<?, Integer> j;
  
  private final List<ayy<?, Float>> k;
  
  @Nullable
  private final ayy<?, Float> l;
  
  ayb(awu paramawu, bdy parambdy, Paint.Cap paramCap, Paint.Join paramJoin, baw parambaw, bao parambao1, List<bao> paramList, bao parambao2) {
    this.f = paramawu;
    this.a.setStyle(Paint.Style.STROKE);
    this.a.setStrokeCap(paramCap);
    this.a.setStrokeJoin(paramJoin);
    this.j = parambaw.a();
    this.i = parambao1.a();
    if (parambao2 == null) {
      this.l = null;
    } else {
      this.l = parambao2.a();
    } 
    this.k = new ArrayList<ayy<?, Float>>(paramList.size());
    this.h = new float[paramList.size()];
    int i;
    for (i = 0; i < paramList.size(); i++)
      this.k.add(((bao)paramList.get(i)).a()); 
    parambdy.a(this.j);
    parambdy.a(this.i);
    for (i = 0; i < this.k.size(); i++)
      parambdy.a(this.k.get(i)); 
    if (this.l != null)
      parambdy.a(this.l); 
    this.j.a(this);
    this.i.a(this);
    for (i = bool; i < paramList.size(); i++)
      ((ayy)this.k.get(i)).a(this); 
    if (this.l != null)
      this.l.a(this); 
  }
  
  private void a(Canvas paramCanvas, ayd paramayd, Matrix paramMatrix) {
    awm.a("StrokeContent#applyTrimPath");
    if (ayd.b(paramayd) == null) {
      awm.b("StrokeContent#applyTrimPath");
      return;
    } 
    this.c.reset();
    int i;
    for (i = ayd.a(paramayd).size() - 1; i >= 0; i--)
      this.c.addPath(((ayp)ayd.a(paramayd).get(i)).e(), paramMatrix); 
    this.b.setPath(this.c, false);
    float f1;
    for (f1 = this.b.getLength(); this.b.nextContour(); f1 = this.b.getLength() + f1);
    float f2 = ((Float)ayd.b(paramayd).f().b()).floatValue() * f1 / 360.0F;
    float f3 = ((Float)ayd.b(paramayd).d().b()).floatValue() * f1 / 100.0F + f2;
    float f4 = ((Float)ayd.b(paramayd).e().b()).floatValue() * f1 / 100.0F + f2;
    i = ayd.a(paramayd).size() - 1;
    for (f2 = 0.0F; i >= 0; f2 += f) {
      this.d.set(((ayp)ayd.a(paramayd).get(i)).e());
      this.d.transform(paramMatrix);
      this.b.setPath(this.d, false);
      float f = this.b.getLength();
      if (f4 > f1 && f4 - f1 < f2 + f && f2 < f4 - f1) {
        float f5;
        if (f3 > f1) {
          f5 = (f3 - f1) / f;
        } else {
          f5 = 0.0F;
        } 
        float f6 = Math.min((f4 - f1) / f, 1.0F);
        bey.a(this.d, f5, f6, 0.0F);
        paramCanvas.drawPath(this.d, this.a);
      } else if (f2 + f >= f3 && f2 <= f4) {
        if (f2 + f <= f4 && f3 < f2) {
          paramCanvas.drawPath(this.d, this.a);
        } else {
          float f5;
          float f6;
          if (f3 < f2) {
            f5 = 0.0F;
          } else {
            f5 = (f3 - f2) / f;
          } 
          if (f4 > f2 + f) {
            f6 = 1.0F;
          } else {
            f6 = (f4 - f2) / f;
          } 
          bey.a(this.d, f5, f6, 0.0F);
          paramCanvas.drawPath(this.d, this.a);
        } 
      } 
      i--;
    } 
    awm.b("StrokeContent#applyTrimPath");
  }
  
  private void a(Matrix paramMatrix) {
    awm.a("StrokeContent#applyDashPattern");
    if (this.k.isEmpty()) {
      awm.b("StrokeContent#applyDashPattern");
      return;
    } 
    float f = bey.a(paramMatrix);
    for (int i = 0; i < this.k.size(); i++) {
      this.h[i] = ((Float)((ayy)this.k.get(i)).b()).floatValue();
      if (i % 2 == 0) {
        if (this.h[i] < 1.0F)
          this.h[i] = 1.0F; 
      } else if (this.h[i] < 0.1F) {
        this.h[i] = 0.1F;
      } 
      float[] arrayOfFloat = this.h;
      arrayOfFloat[i] = arrayOfFloat[i] * f;
    } 
    if (this.l == null) {
      f = 0.0F;
    } else {
      f = ((Float)this.l.b()).floatValue();
    } 
    this.a.setPathEffect((PathEffect)new DashPathEffect(this.h, f));
    awm.b("StrokeContent#applyDashPattern");
  }
  
  public void a() {
    this.f.invalidateSelf();
  }
  
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    awm.a("StrokeContent#draw");
    float f = paramInt / 255.0F;
    paramInt = (int)(((Integer)this.j.b()).intValue() * f / 100.0F * 255.0F);
    this.a.setAlpha(paramInt);
    this.a.setStrokeWidth(((Float)this.i.b()).floatValue() * bey.a(paramMatrix));
    if (this.a.getStrokeWidth() <= 0.0F) {
      awm.b("StrokeContent#draw");
      return;
    } 
    a(paramMatrix);
    for (paramInt = 0; paramInt < this.g.size(); paramInt++) {
      ayd ayd = this.g.get(paramInt);
      if (ayd.b(ayd) != null) {
        a(paramCanvas, ayd, paramMatrix);
      } else {
        awm.a("StrokeContent#buildPath");
        this.c.reset();
        int i;
        for (i = ayd.a(ayd).size() - 1; i >= 0; i--)
          this.c.addPath(((ayp)ayd.a(ayd).get(i)).e(), paramMatrix); 
        awm.b("StrokeContent#buildPath");
        awm.a("StrokeContent#drawPath");
        paramCanvas.drawPath(this.c, this.a);
        awm.b("StrokeContent#drawPath");
      } 
    } 
    awm.b("StrokeContent#draw");
  }
  
  public void a(RectF paramRectF, Matrix paramMatrix) {
    awm.a("StrokeContent#getBounds");
    this.c.reset();
    int i;
    for (i = 0; i < this.g.size(); i++) {
      ayd ayd = this.g.get(i);
      int j;
      for (j = 0; j < ayd.a(ayd).size(); j++)
        this.c.addPath(((ayp)ayd.a(ayd).get(j)).e(), paramMatrix); 
    } 
    this.c.computeBounds(this.e, false);
    float f1 = ((Float)this.i.b()).floatValue();
    RectF rectF = this.e;
    float f2 = this.e.left;
    float f3 = f1 / 2.0F;
    float f4 = this.e.top;
    float f5 = f1 / 2.0F;
    float f6 = this.e.right;
    float f7 = f1 / 2.0F;
    float f8 = this.e.bottom;
    rectF.set(f2 - f3, f4 - f5, f6 + f7, f1 / 2.0F + f8);
    paramRectF.set(this.e);
    paramRectF.set(paramRectF.left - 1.0F, paramRectF.top - 1.0F, paramRectF.right + 1.0F, paramRectF.bottom + 1.0F);
    awm.b("StrokeContent#getBounds");
  }
  
  public void a(List<aye> paramList1, List<aye> paramList2) {
    ayd ayd;
    int i = paramList1.size() - 1;
    ayw ayw = null;
    while (i >= 0) {
      aye aye = paramList1.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Individually)
        ayw = (ayw)aye; 
      i--;
    } 
    if (ayw != null)
      ayw.a(this); 
    i = paramList2.size() - 1;
    paramList1 = null;
    while (i >= 0) {
      aye aye = paramList2.get(i);
      if (aye instanceof ayw && ((ayw)aye).c() == bdw.Individually) {
        if (paramList1 != null)
          this.g.add(paramList1); 
        ayd = new ayd((ayw)aye, null);
        ((ayw)aye).a(this);
      } else if (aye instanceof ayp) {
        if (ayd == null)
          ayd = new ayd(ayw, null); 
        ayd.a(ayd).add((ayp)aye);
      } 
      i--;
    } 
    if (ayd != null)
      this.g.add(ayd); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ayb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */