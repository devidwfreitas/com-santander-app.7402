import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.github.mikephil.charting.data.BubbleEntry;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cle {
  protected Matrix a = new Matrix();
  
  protected Matrix b = new Matrix();
  
  protected clh c;
  
  protected float[] d = new float[1];
  
  protected float[] e = new float[1];
  
  protected float[] f = new float[1];
  
  protected float[] g = new float[1];
  
  protected Matrix h = new Matrix();
  
  float[] i = new float[2];
  
  private Matrix j = new Matrix();
  
  private Matrix k = new Matrix();
  
  public cle(clh paramclh) {
    this.c = paramclh;
  }
  
  public Matrix a() {
    return this.a;
  }
  
  public ckz a(float paramFloat1, float paramFloat2) {
    ckz ckz = ckz.a(0.0D, 0.0D);
    a(paramFloat1, paramFloat2, ckz);
    return ckz;
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    float f1 = 0.0F;
    float f2 = this.c.j() / paramFloat2;
    paramFloat3 = this.c.k() / paramFloat3;
    paramFloat2 = f2;
    if (Float.isInfinite(f2))
      paramFloat2 = 0.0F; 
    if (Float.isInfinite(paramFloat3))
      paramFloat3 = f1; 
    this.a.reset();
    this.a.postTranslate(-paramFloat1, -paramFloat4);
    this.a.postScale(paramFloat2, -paramFloat3);
  }
  
  public void a(float paramFloat1, float paramFloat2, ckz paramckz) {
    this.i[0] = paramFloat1;
    this.i[1] = paramFloat2;
    b(this.i);
    paramckz.a = this.i[0];
    paramckz.b = this.i[1];
  }
  
  public void a(Path paramPath) {
    paramPath.transform(this.a);
    paramPath.transform(this.c.r());
    paramPath.transform(this.b);
  }
  
  public void a(RectF paramRectF) {
    this.a.mapRect(paramRectF);
    this.c.r().mapRect(paramRectF);
    this.b.mapRect(paramRectF);
  }
  
  public void a(RectF paramRectF, float paramFloat) {
    paramRectF.top *= paramFloat;
    paramRectF.bottom *= paramFloat;
    this.a.mapRect(paramRectF);
    this.c.r().mapRect(paramRectF);
    this.b.mapRect(paramRectF);
  }
  
  public void a(List<Path> paramList) {
    for (int i = 0; i < paramList.size(); i++)
      a(paramList.get(i)); 
  }
  
  public void a(boolean paramBoolean) {
    this.b.reset();
    if (!paramBoolean) {
      this.b.postTranslate(this.c.b(), this.c.n() - this.c.e());
      return;
    } 
    this.b.setTranslate(this.c.b(), -this.c.d());
    this.b.postScale(1.0F, -1.0F);
  }
  
  public void a(float[] paramArrayOffloat) {
    this.a.mapPoints(paramArrayOffloat);
    this.c.r().mapPoints(paramArrayOffloat);
    this.b.mapPoints(paramArrayOffloat);
  }
  
  public float[] a(cim paramcim, float paramFloat, int paramInt1, int paramInt2) {
    int i = (paramInt2 - paramInt1 + 1) * 2;
    if (this.e.length != i)
      this.e = new float[i]; 
    float[] arrayOfFloat = this.e;
    for (paramInt2 = 0; paramInt2 < i; paramInt2 += 2) {
      BubbleEntry bubbleEntry = paramcim.m(paramInt2 / 2 + paramInt1);
      if (bubbleEntry != null) {
        arrayOfFloat[paramInt2] = bubbleEntry.k();
        arrayOfFloat[paramInt2 + 1] = bubbleEntry.c() * paramFloat;
      } else {
        arrayOfFloat[paramInt2] = 0.0F;
        arrayOfFloat[paramInt2 + 1] = 0.0F;
      } 
    } 
    c().mapPoints(arrayOfFloat);
    return arrayOfFloat;
  }
  
  public float[] a(cin paramcin, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2) {
    int i = (int)((paramInt2 - paramInt1) * paramFloat1 + 1.0F) * 2;
    if (this.g.length != i)
      this.g = new float[i]; 
    float[] arrayOfFloat = this.g;
    for (paramInt2 = 0; paramInt2 < i; paramInt2 += 2) {
      CandleEntry candleEntry = paramcin.m(paramInt2 / 2 + paramInt1);
      if (candleEntry != null) {
        arrayOfFloat[paramInt2] = candleEntry.k();
        arrayOfFloat[paramInt2 + 1] = candleEntry.e() * paramFloat2;
      } else {
        arrayOfFloat[paramInt2] = 0.0F;
        arrayOfFloat[paramInt2 + 1] = 0.0F;
      } 
    } 
    c().mapPoints(arrayOfFloat);
    return arrayOfFloat;
  }
  
  public float[] a(cip paramcip, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2) {
    int i = ((int)((paramInt2 - paramInt1) * paramFloat1) + 1) * 2;
    if (this.f.length != i)
      this.f = new float[i]; 
    float[] arrayOfFloat = this.f;
    for (paramInt2 = 0; paramInt2 < i; paramInt2 += 2) {
      Entry entry = paramcip.m(paramInt2 / 2 + paramInt1);
      if (entry != null) {
        arrayOfFloat[paramInt2] = entry.k();
        arrayOfFloat[paramInt2 + 1] = entry.c() * paramFloat2;
      } else {
        arrayOfFloat[paramInt2] = 0.0F;
        arrayOfFloat[paramInt2 + 1] = 0.0F;
      } 
    } 
    c().mapPoints(arrayOfFloat);
    return arrayOfFloat;
  }
  
  public float[] a(ciu paramciu, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2) {
    int i = (int)((paramInt2 - paramInt1) * paramFloat1 + 1.0F) * 2;
    if (this.d.length != i)
      this.d = new float[i]; 
    float[] arrayOfFloat = this.d;
    for (paramInt2 = 0; paramInt2 < i; paramInt2 += 2) {
      Entry entry = paramciu.m(paramInt2 / 2 + paramInt1);
      if (entry != null) {
        arrayOfFloat[paramInt2] = entry.k();
        arrayOfFloat[paramInt2 + 1] = entry.c() * paramFloat2;
      } else {
        arrayOfFloat[paramInt2] = 0.0F;
        arrayOfFloat[paramInt2 + 1] = 0.0F;
      } 
    } 
    c().mapPoints(arrayOfFloat);
    return arrayOfFloat;
  }
  
  public Matrix b() {
    return this.b;
  }
  
  public ckz b(float paramFloat1, float paramFloat2) {
    this.i[0] = paramFloat1;
    this.i[1] = paramFloat2;
    a(this.i);
    return ckz.a(this.i[0], this.i[1]);
  }
  
  public void b(RectF paramRectF) {
    this.a.mapRect(paramRectF);
    this.c.r().mapRect(paramRectF);
    this.b.mapRect(paramRectF);
  }
  
  public void b(RectF paramRectF, float paramFloat) {
    paramRectF.left *= paramFloat;
    paramRectF.right *= paramFloat;
    this.a.mapRect(paramRectF);
    this.c.r().mapRect(paramRectF);
    this.b.mapRect(paramRectF);
  }
  
  public void b(List<RectF> paramList) {
    Matrix matrix = c();
    for (int i = 0; i < paramList.size(); i++)
      matrix.mapRect(paramList.get(i)); 
  }
  
  public void b(float[] paramArrayOffloat) {
    Matrix matrix = this.h;
    matrix.reset();
    this.b.invert(matrix);
    matrix.mapPoints(paramArrayOffloat);
    this.c.r().invert(matrix);
    matrix.mapPoints(paramArrayOffloat);
    this.a.invert(matrix);
    matrix.mapPoints(paramArrayOffloat);
  }
  
  public Matrix c() {
    this.j.set(this.a);
    this.j.postConcat(this.c.a);
    this.j.postConcat(this.b);
    return this.j;
  }
  
  public void c(RectF paramRectF, float paramFloat) {
    paramRectF.left *= paramFloat;
    paramRectF.right *= paramFloat;
    this.a.mapRect(paramRectF);
    this.c.r().mapRect(paramRectF);
    this.b.mapRect(paramRectF);
  }
  
  public Matrix d() {
    c().invert(this.k);
    return this.k;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cle.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */