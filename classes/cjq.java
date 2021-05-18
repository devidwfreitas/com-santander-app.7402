import android.graphics.Canvas;
import android.graphics.Paint;
import com.github.mikephil.charting.data.CandleEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cjq extends ckb {
  protected cif a;
  
  private float[] b = new float[8];
  
  private float[] c = new float[4];
  
  private float[] d = new float[4];
  
  private float[] e = new float[4];
  
  private float[] l = new float[4];
  
  public cjq(cif paramcif, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramcif;
  }
  
  public void a() {}
  
  public void a(Canvas paramCanvas) {
    for (cin cin : this.a.e_().i()) {
      if (cin.B())
        a(paramCanvas, cin); 
    } 
  }
  
  protected void a(Canvas paramCanvas, cin paramcin) {
    cle cle = this.a.a(paramcin.C());
    float f1 = this.g.a();
    float f2 = paramcin.b();
    boolean bool = paramcin.d();
    this.f.a(this.a, paramcin);
    this.h.setStrokeWidth(paramcin.c());
    for (int i = this.f.a; i <= this.f.c + this.f.a; i++) {
      CandleEntry candleEntry = paramcin.m(i);
      if (candleEntry != null) {
        float f3 = candleEntry.k();
        float f4 = candleEntry.h();
        float f5 = candleEntry.g();
        float f6 = candleEntry.e();
        float f7 = candleEntry.f();
        if (bool) {
          this.b[0] = f3;
          this.b[2] = f3;
          this.b[4] = f3;
          this.b[6] = f3;
          if (f4 > f5) {
            this.b[1] = f6 * f1;
            this.b[3] = f4 * f1;
            this.b[5] = f7 * f1;
            this.b[7] = f5 * f1;
          } else if (f4 < f5) {
            this.b[1] = f6 * f1;
            this.b[3] = f5 * f1;
            this.b[5] = f7 * f1;
            this.b[7] = f4 * f1;
          } else {
            this.b[1] = f6 * f1;
            this.b[3] = f4 * f1;
            this.b[5] = f7 * f1;
            this.b[7] = this.b[3];
          } 
          cle.a(this.b);
          if (paramcin.G()) {
            if (f4 > f5) {
              int j;
              Paint paint = this.h;
              if (paramcin.g() == 1122867) {
                j = paramcin.e(i);
              } else {
                j = paramcin.g();
              } 
              paint.setColor(j);
            } else if (f4 < f5) {
              int j;
              Paint paint = this.h;
              if (paramcin.f() == 1122867) {
                j = paramcin.e(i);
              } else {
                j = paramcin.f();
              } 
              paint.setColor(j);
            } else {
              int j;
              Paint paint = this.h;
              if (paramcin.e() == 1122867) {
                j = paramcin.e(i);
              } else {
                j = paramcin.e();
              } 
              paint.setColor(j);
            } 
          } else {
            int j;
            Paint paint = this.h;
            if (paramcin.F() == 1122867) {
              j = paramcin.e(i);
            } else {
              j = paramcin.F();
            } 
            paint.setColor(j);
          } 
          this.h.setStyle(Paint.Style.STROKE);
          paramCanvas.drawLines(this.b, this.h);
          this.c[0] = f3 - 0.5F + f2;
          this.c[1] = f5 * f1;
          this.c[2] = f3 + 0.5F - f2;
          this.c[3] = f4 * f1;
          cle.a(this.c);
          if (f4 > f5) {
            if (paramcin.g() == 1122867) {
              this.h.setColor(paramcin.e(i));
            } else {
              this.h.setColor(paramcin.g());
            } 
            this.h.setStyle(paramcin.i());
            paramCanvas.drawRect(this.c[0], this.c[3], this.c[2], this.c[1], this.h);
          } else if (f4 < f5) {
            if (paramcin.f() == 1122867) {
              this.h.setColor(paramcin.e(i));
            } else {
              this.h.setColor(paramcin.f());
            } 
            this.h.setStyle(paramcin.h());
            paramCanvas.drawRect(this.c[0], this.c[1], this.c[2], this.c[3], this.h);
          } else {
            if (paramcin.e() == 1122867) {
              this.h.setColor(paramcin.e(i));
            } else {
              this.h.setColor(paramcin.e());
            } 
            paramCanvas.drawLine(this.c[0], this.c[1], this.c[2], this.c[3], this.h);
          } 
        } else {
          int j;
          this.d[0] = f3;
          this.d[1] = f6 * f1;
          this.d[2] = f3;
          this.d[3] = f7 * f1;
          this.e[0] = f3 - 0.5F + f2;
          this.e[1] = f4 * f1;
          this.e[2] = f3;
          this.e[3] = f4 * f1;
          this.l[0] = 0.5F + f3 - f2;
          this.l[1] = f5 * f1;
          this.l[2] = f3;
          this.l[3] = f5 * f1;
          cle.a(this.d);
          cle.a(this.e);
          cle.a(this.l);
          if (f4 > f5) {
            if (paramcin.g() == 1122867) {
              j = paramcin.e(i);
            } else {
              j = paramcin.g();
            } 
          } else if (f4 < f5) {
            if (paramcin.f() == 1122867) {
              j = paramcin.e(i);
            } else {
              j = paramcin.f();
            } 
          } else if (paramcin.e() == 1122867) {
            j = paramcin.e(i);
          } else {
            j = paramcin.e();
          } 
          this.h.setColor(j);
          paramCanvas.drawLine(this.d[0], this.d[1], this.d[2], this.d[3], this.h);
          paramCanvas.drawLine(this.e[0], this.e[1], this.e[2], this.e[3], this.h);
          paramCanvas.drawLine(this.l[0], this.l[1], this.l[2], this.l[3], this.h);
        } 
      } 
    } 
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    cgm cgm = this.a.e_();
    int j = paramArrayOfchv.length;
    for (int i = 0; i < j; i++) {
      chv chv1 = paramArrayOfchv[i];
      cin cin = cgm.a(chv1.f());
      if (cin != null && cin.q()) {
        CandleEntry candleEntry = cin.b(chv1.a(), chv1.b());
        if (a((Entry)candleEntry, cin)) {
          float f = (candleEntry.f() * this.g.a() + candleEntry.e() * this.g.a()) / 2.0F;
          ckz ckz = this.a.a(cin.C()).b(candleEntry.k(), f);
          chv1.a((float)ckz.a, (float)ckz.b);
          a(paramCanvas, (float)ckz.a, (float)ckz.b, cin);
        } 
      } 
    } 
  }
  
  public void b(Canvas paramCanvas) {
    if (a(this.a)) {
      List<cin> list = this.a.e_().i();
      int i = 0;
      label21: while (i < list.size()) {
        cin cin = list.get(i);
        if (!a(cin))
          continue; 
        b(cin);
        cle cle = this.a.a(cin.C());
        this.f.a(this.a, cin);
        float[] arrayOfFloat = cle.a(cin, this.g.b(), this.g.a(), this.f.a, this.f.b);
        float f = clg.a(5.0F);
        int j = 0;
        while (true) {
          if (j < arrayOfFloat.length) {
            float f1 = arrayOfFloat[j];
            float f2 = arrayOfFloat[j + 1];
            if (this.s.h(f1)) {
              if (this.s.g(f1) && this.s.f(f2)) {
                CandleEntry candleEntry = cin.m(j / 2 + this.f.a);
                a(paramCanvas, cin.r(), candleEntry.e(), (Entry)candleEntry, i, f1, f2 - f, cin.i(j / 2));
              } 
              j += 2;
              continue;
            } 
          } 
          i++;
          continue label21;
        } 
      } 
    } 
  }
  
  public void c(Canvas paramCanvas) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */