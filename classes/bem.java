import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bem extends bdy {
  private final char[] e = new char[1];
  
  private final RectF f = new RectF();
  
  private final Matrix g = new Matrix();
  
  private final Paint h = new ben(this, 1);
  
  private final Paint i = new beo(this, 1);
  
  private final Map<bae, List<ayf>> j = new HashMap<bae, List<ayf>>();
  
  private final azp k;
  
  private final awu l;
  
  private final awr m;
  
  @Nullable
  private ayy<Integer, Integer> n;
  
  @Nullable
  private ayy<Integer, Integer> o;
  
  @Nullable
  private ayy<Float, Float> p;
  
  @Nullable
  private ayy<Float, Float> q;
  
  bem(awu paramawu, bee parambee) {
    super(paramawu, parambee);
    this.l = paramawu;
    this.m = parambee.a();
    this.k = parambee.s().d();
    this.k.a(this);
    a(this.k);
    bbp bbp = parambee.t();
    if (bbp != null && bbp.a != null) {
      this.n = bbp.a.a();
      this.n.a(this);
      a(this.n);
    } 
    if (bbp != null && bbp.b != null) {
      this.o = bbp.b.a();
      this.o.a(this);
      a(this.o);
    } 
    if (bbp != null && bbp.c != null) {
      this.p = bbp.c.a();
      this.p.a(this);
      a(this.p);
    } 
    if (bbp != null && bbp.d != null) {
      this.q = bbp.d.a();
      this.q.a(this);
      a(this.q);
    } 
  }
  
  private List<ayf> a(bae parambae) {
    if (this.j.containsKey(parambae))
      return this.j.get(parambae); 
    List<bdj> list = parambae.a();
    int j = list.size();
    ArrayList<ayf> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++) {
      bdj bdj = list.get(i);
      arrayList.add(new ayf(this.l, this, bdj));
    } 
    this.j.put(parambae, arrayList);
    return arrayList;
  }
  
  private void a(char paramChar, azz paramazz, Canvas paramCanvas) {
    this.e[0] = paramChar;
    if (paramazz.j) {
      a(this.e, this.h, paramCanvas);
      a(this.e, this.i, paramCanvas);
      return;
    } 
    a(this.e, this.i, paramCanvas);
    a(this.e, this.h, paramCanvas);
  }
  
  private void a(Path paramPath, Paint paramPaint, Canvas paramCanvas) {
    if (paramPaint.getColor() != 0 && (paramPaint.getStyle() != Paint.Style.STROKE || paramPaint.getStrokeWidth() != 0.0F)) {
      paramCanvas.drawPath(paramPath, paramPaint);
      return;
    } 
  }
  
  private void a(azz paramazz, Matrix paramMatrix, bac parambac, Canvas paramCanvas) {
    float f1 = paramazz.c / 100.0F;
    float f2 = bey.a(paramMatrix);
    String str = paramazz.a;
    for (int i = 0; i < str.length(); i++) {
      int j = bae.a(str.charAt(i), parambac.a(), parambac.c());
      bae bae = (bae)this.m.k().get(j);
      if (bae != null) {
        a(bae, paramMatrix, f1, paramazz, paramCanvas);
        float f4 = (float)bae.c();
        float f5 = this.m.p();
        float f3 = paramazz.e / 10.0F;
        if (this.q != null)
          f3 = ((Float)this.q.b()).floatValue() + f3; 
        paramCanvas.translate(f3 * f2 + f4 * f1 * f5 * f2, 0.0F);
      } 
    } 
  }
  
  private void a(azz paramazz, bac parambac, Matrix paramMatrix, Canvas paramCanvas) {
    float f = bey.a(paramMatrix);
    Typeface typeface = this.l.a(parambac.a(), parambac.c());
    if (typeface != null) {
      String str = paramazz.a;
      axy axy = this.l.p();
      if (axy != null)
        str = axy.c(str); 
      this.h.setTypeface(typeface);
      this.h.setTextSize(paramazz.c * this.m.p());
      this.i.setTypeface(this.h.getTypeface());
      this.i.setTextSize(this.h.getTextSize());
      int i = 0;
      while (true) {
        if (i < str.length()) {
          char c = str.charAt(i);
          a(c, paramazz, paramCanvas);
          this.e[0] = c;
          float f2 = this.h.measureText(this.e, 0, 1);
          float f1 = paramazz.e / 10.0F;
          if (this.q != null)
            f1 = ((Float)this.q.b()).floatValue() + f1; 
          paramCanvas.translate(f1 * f + f2, 0.0F);
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void a(bae parambae, Matrix paramMatrix, float paramFloat, azz paramazz, Canvas paramCanvas) {
    List<ayf> list = a(parambae);
    for (int i = 0; i < list.size(); i++) {
      Path path = ((ayf)list.get(i)).e();
      path.computeBounds(this.f, false);
      this.g.set(paramMatrix);
      this.g.preScale(paramFloat, paramFloat);
      path.transform(this.g);
      if (paramazz.j) {
        a(path, this.h, paramCanvas);
        a(path, this.i, paramCanvas);
      } else {
        a(path, this.i, paramCanvas);
        a(path, this.h, paramCanvas);
      } 
    } 
  }
  
  private void a(char[] paramArrayOfchar, Paint paramPaint, Canvas paramCanvas) {
    if (paramPaint.getColor() != 0 && (paramPaint.getStyle() != Paint.Style.STROKE || paramPaint.getStrokeWidth() != 0.0F)) {
      paramCanvas.drawText(paramArrayOfchar, 0, 1, 0.0F, 0.0F, paramPaint);
      return;
    } 
  }
  
  void b(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    paramCanvas.save();
    if (!this.l.q())
      paramCanvas.setMatrix(paramMatrix); 
    azz azz = this.k.b();
    bac bac = this.m.l().get(azz.b);
    if (bac == null)
      return; 
    if (this.n != null) {
      this.h.setColor(((Integer)this.n.b()).intValue());
    } else {
      this.h.setColor(azz.g);
    } 
    if (this.o != null) {
      this.i.setColor(((Integer)this.o.b()).intValue());
    } else {
      this.i.setColor(azz.h);
    } 
    paramInt = ((Integer)this.d.a().b()).intValue() * 255 / 100;
    this.h.setAlpha(paramInt);
    this.i.setAlpha(paramInt);
    if (this.p != null) {
      this.i.setStrokeWidth(((Float)this.p.b()).floatValue());
    } else {
      float f = bey.a(paramMatrix);
      this.i.setStrokeWidth(f * azz.i * this.m.p());
    } 
    if (this.l.q()) {
      a(azz, paramMatrix, bac, paramCanvas);
    } else {
      a(azz, bac, paramMatrix, paramCanvas);
    } 
    paramCanvas.restore();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */