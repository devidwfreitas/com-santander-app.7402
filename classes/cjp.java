import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import com.github.mikephil.charting.data.BubbleEntry;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

public class cjp extends cjn {
  protected cie a;
  
  private float[] b = new float[4];
  
  private float[] c = new float[2];
  
  private float[] d = new float[3];
  
  public cjp(cie paramcie, cdq paramcdq, clh paramclh) {
    super(paramcdq, paramclh);
    this.a = paramcie;
    this.h.setStyle(Paint.Style.FILL);
    this.i.setStyle(Paint.Style.STROKE);
    this.i.setStrokeWidth(clg.a(1.5F));
  }
  
  protected float a(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean) {
    float f = paramFloat1;
    if (paramBoolean) {
      if (paramFloat2 == 0.0F) {
        f = 1.0F;
        return paramFloat3 * f;
      } 
    } else {
      return paramFloat3 * f;
    } 
    f = (float)Math.sqrt((paramFloat1 / paramFloat2));
    return paramFloat3 * f;
  }
  
  public void a() {}
  
  public void a(Canvas paramCanvas) {
    for (cim cim : this.a.c().i()) {
      if (cim.B())
        a(paramCanvas, cim); 
    } 
  }
  
  protected void a(Canvas paramCanvas, cim paramcim) {
    cle cle = this.a.a(paramcim.C());
    float f1 = this.g.a();
    this.f.a(this.a, paramcim);
    this.b[0] = 0.0F;
    this.b[2] = 1.0F;
    cle.a(this.b);
    boolean bool = paramcim.d();
    float f2 = Math.abs(this.b[2] - this.b[0]);
    f2 = Math.min(Math.abs(this.s.i() - this.s.f()), f2);
    int i = this.f.a;
    while (true) {
      if (i <= this.f.c + this.f.a) {
        BubbleEntry bubbleEntry = paramcim.m(i);
        this.c[0] = bubbleEntry.k();
        this.c[1] = bubbleEntry.c() * f1;
        cle.a(this.c);
        float f = a(bubbleEntry.b(), paramcim.c(), f2, bool) / 2.0F;
        if (this.s.i(this.c[1] + f) && this.s.j(this.c[1] - f) && this.s.g(this.c[0] + f)) {
          if (!this.s.h(this.c[0] - f))
            return; 
          int j = paramcim.e((int)bubbleEntry.k());
          this.h.setColor(j);
          paramCanvas.drawCircle(this.c[0], this.c[1], f, this.h);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void a(Canvas paramCanvas, chv[] paramArrayOfchv) {
    cgk cgk = this.a.c();
    float f = this.g.a();
    int j = paramArrayOfchv.length;
    int i = 0;
    while (true) {
      if (i < j) {
        chv chv1 = paramArrayOfchv[i];
        cim cim = cgk.a(chv1.f());
        if (cim != null && cim.q()) {
          BubbleEntry bubbleEntry = cim.b(chv1.a(), chv1.b());
          if (bubbleEntry.c() == chv1.b() && a((Entry)bubbleEntry, cim)) {
            cle cle = this.a.a(cim.C());
            this.b[0] = 0.0F;
            this.b[2] = 1.0F;
            cle.a(this.b);
            boolean bool = cim.d();
            float f1 = Math.abs(this.b[2] - this.b[0]);
            f1 = Math.min(Math.abs(this.s.i() - this.s.f()), f1);
            this.c[0] = bubbleEntry.k();
            this.c[1] = bubbleEntry.c() * f;
            cle.a(this.c);
            chv1.a(this.c[0], this.c[1]);
            f1 = a(bubbleEntry.b(), cim.c(), f1, bool) / 2.0F;
            if (this.s.i(this.c[1] + f1) && this.s.j(this.c[1] - f1) && this.s.g(this.c[0] + f1)) {
              if (!this.s.h(this.c[0] - f1))
                return; 
              int k = cim.e((int)bubbleEntry.k());
              Color.RGBToHSV(Color.red(k), Color.green(k), Color.blue(k), this.d);
              float[] arrayOfFloat = this.d;
              arrayOfFloat[2] = arrayOfFloat[2] * 0.5F;
              k = Color.HSVToColor(Color.alpha(k), this.d);
              this.i.setColor(k);
              this.i.setStrokeWidth(cim.b());
              paramCanvas.drawCircle(this.c[0], this.c[1], f1, this.i);
            } 
          } 
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void b(Canvas paramCanvas) {
    cgk cgk = this.a.c();
    if (cgk != null && a(this.a)) {
      List<cim> list = cgk.i();
      float f = clg.b(this.k, "1");
      int i = 0;
      label27: while (true) {
        if (i < list.size()) {
          cim cim = list.get(i);
          if (!a(cim))
            continue; 
          b(cim);
          float f1 = Math.max(0.0F, Math.min(1.0F, this.g.b()));
          float f2 = this.g.a();
          this.f.a(this.a, cim);
          float[] arrayOfFloat = this.a.a(cim.C()).a(cim, f2, this.f.a, this.f.b);
          if (f1 == 1.0F)
            f1 = f2; 
          int j = 0;
          while (true) {
            if (j < arrayOfFloat.length) {
              int k = cim.i(j / 2 + this.f.a);
              k = Color.argb(Math.round(255.0F * f1), Color.red(k), Color.green(k), Color.blue(k));
              f2 = arrayOfFloat[j];
              float f3 = arrayOfFloat[j + 1];
              if (this.s.h(f2)) {
                if (this.s.g(f2) && this.s.f(f3)) {
                  BubbleEntry bubbleEntry = cim.m(j / 2 + this.f.a);
                  a(paramCanvas, cim.r(), bubbleEntry.b(), (Entry)bubbleEntry, i, f2, f3 + 0.5F * f, k);
                } 
                j += 2;
                continue;
              } 
            } 
            i++;
            continue label27;
          } 
          break;
        } 
        return;
      } 
    } 
  }
  
  public void c(Canvas paramCanvas) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */