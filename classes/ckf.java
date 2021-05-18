import android.graphics.Canvas;
import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class ckf extends ckb {
  protected cij a;
  
  float[] b = new float[2];
  
  public ckf(cij paramcij, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramcij;
  }
  
  public void a() {}
  
  public void a(Canvas paramCanvas) {
    for (ciu ciu : this.a.aM().i()) {
      if (ciu.B())
        a(paramCanvas, ciu); 
    } 
  }
  
  protected void a(Canvas paramCanvas, ciu paramciu) {
    clh clh = this.s;
    cle cle = this.a.a(paramciu.C());
    float f = this.g.a();
    ckq ckq = paramciu.c();
    if (ckq == null) {
      Log.i("MISSING", "There's no IShapeRenderer specified for ScatterDataSet");
      return;
    } 
    int j = (int)Math.min(Math.ceil((paramciu.I() * this.g.b())), paramciu.I());
    int i = 0;
    while (true) {
      if (i < j) {
        Entry entry = paramciu.m(i);
        this.b[0] = entry.k();
        this.b[1] = entry.c() * f;
        cle.a(this.b);
        if (clh.h(this.b[0])) {
          if (clh.g(this.b[0]) && clh.f(this.b[1])) {
            this.h.setColor(paramciu.e(i / 2));
            ckq.a(paramCanvas, paramciu, this.s, this.b[0], this.b[1], this.h);
          } 
          i++;
          continue;
        } 
      } 
      return;
    } 
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    chd chd = this.a.aM();
    int j = paramArrayOfchv.length;
    for (int i = 0; i < j; i++) {
      chv chv1 = paramArrayOfchv[i];
      ciu ciu = chd.a(chv1.f());
      if (ciu != null && ciu.q()) {
        Entry entry = ciu.b(chv1.a(), chv1.b());
        if (a(entry, ciu)) {
          ckz ckz = this.a.a(ciu.C()).b(entry.k(), entry.c() * this.g.a());
          chv1.a((float)ckz.a, (float)ckz.b);
          a(paramCanvas, (float)ckz.a, (float)ckz.b, ciu);
        } 
      } 
    } 
  }
  
  public void b(Canvas paramCanvas) {
    if (a(this.a)) {
      List<ciu> list = this.a.aM().i();
      int i = 0;
      label20: while (i < this.a.aM().d()) {
        ciu ciu = list.get(i);
        if (!a(ciu))
          continue; 
        b(ciu);
        this.f.a(this.a, ciu);
        float[] arrayOfFloat = this.a.a(ciu.C()).a(ciu, this.g.b(), this.g.a(), this.f.a, this.f.b);
        float f = clg.a(ciu.b());
        int j = 0;
        while (true) {
          if (j < arrayOfFloat.length && this.s.h(arrayOfFloat[j])) {
            if (this.s.g(arrayOfFloat[j]) && this.s.f(arrayOfFloat[j + 1])) {
              Entry entry = ciu.m(j / 2 + this.f.a);
              a(paramCanvas, ciu.r(), entry.c(), entry, i, arrayOfFloat[j], arrayOfFloat[j + 1] - f, ciu.i(j / 2 + this.f.a));
            } 
            j += 2;
            continue;
          } 
          i++;
          continue label20;
        } 
      } 
    } 
  }
  
  public void c(Canvas paramCanvas) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ckf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */