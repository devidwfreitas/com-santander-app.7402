import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathEffect;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class cjv extends cke {
  protected Paint a;
  
  protected Paint b;
  
  protected cfn c;
  
  protected List<cfv> d = new ArrayList<cfv>(16);
  
  protected Paint.FontMetrics e = new Paint.FontMetrics();
  
  private Path f = new Path();
  
  public cjv(clh paramclh, cfn paramcfn) {
    super(paramclh);
    this.c = paramcfn;
    this.a = new Paint(1);
    this.a.setTextSize(clg.a(9.0F));
    this.a.setTextAlign(Paint.Align.LEFT);
    this.b = new Paint(1);
    this.b.setStyle(Paint.Style.FILL);
  }
  
  public Paint a() {
    return this.a;
  }
  
  public void a(Canvas paramCanvas) {
    if (this.c.K()) {
      float f3;
      float f7;
      int i;
      int j;
      int k;
      cfv cfv1;
      cfv cfv2;
      List<ckw> list1;
      List<ckw> list2;
      List<Boolean> list;
      Typeface typeface = this.c.H();
      if (typeface != null)
        this.a.setTypeface(typeface); 
      this.a.setTextSize(this.c.I());
      this.a.setColor(this.c.J());
      float f10 = clg.a(this.a, this.e);
      float f11 = clg.b(this.a, this.e) + clg.a(this.c.t());
      float f12 = f10 - clg.b(this.a, "ABC") / 2.0F;
      cfv[] arrayOfCfv = this.c.a();
      float f5 = clg.a(this.c.u());
      float f8 = clg.a(this.c.s());
      cfs cfs = this.c.l();
      cfr cfr = this.c.j();
      cfu cfu = this.c.k();
      cfp cfp = this.c.n();
      float f6 = clg.a(this.c.p());
      float f9 = clg.a(this.c.v());
      float f4 = this.c.G();
      float f2 = this.c.F();
      float f1 = 0.0F;
      switch (cjw.a[cfr.ordinal()]) {
        default:
          switch (cjw.c[cfs.ordinal()]) {
            default:
              return;
            case 1:
              list1 = this.c.A();
              list2 = this.c.y();
              list = this.c.z();
              f2 = 0.0F;
              switch (cjw.b[cfu.ordinal()]) {
                default:
                  k = arrayOfCfv.length;
                  j = 0;
                  f3 = f2;
                  f2 = f1;
                  i = 0;
                  while (true) {
                    if (j < k) {
                      boolean bool1;
                      boolean bool2;
                      cfv2 = arrayOfCfv[j];
                      if (cfv2.b != cfq.NONE) {
                        bool1 = true;
                      } else {
                        bool1 = false;
                      } 
                      if (Float.isNaN(cfv2.c)) {
                        f4 = f6;
                      } else {
                        f4 = clg.a(cfv2.c);
                      } 
                      if (j < list.size() && ((Boolean)list.get(j)).booleanValue()) {
                        f3 = f10 + f11 + f3;
                        f2 = f1;
                      } 
                      if (f2 == f1 && cfr == cfr.CENTER && i < list1.size()) {
                        float f;
                        if (cfp == cfp.RIGHT_TO_LEFT) {
                          f = ((ckw)list1.get(i)).a;
                        } else {
                          f = -((ckw)list1.get(i)).a;
                        } 
                        f /= 2.0F;
                        i++;
                        f2 += f;
                      } 
                      if (cfv2.a == null) {
                        bool2 = true;
                      } else {
                        bool2 = false;
                      } 
                      if (bool1) {
                        if (cfp == cfp.RIGHT_TO_LEFT)
                          f2 -= f4; 
                        a(paramCanvas, f2, f3 + f12, cfv2, this.c);
                        if (cfp == cfp.LEFT_TO_RIGHT)
                          f2 += f4; 
                      } 
                      if (!bool2) {
                        f4 = f2;
                        if (bool1) {
                          if (cfp == cfp.RIGHT_TO_LEFT) {
                            f4 = -f5;
                          } else {
                            f4 = f5;
                          } 
                          f4 += f2;
                        } 
                        f2 = f4;
                        if (cfp == cfp.RIGHT_TO_LEFT)
                          f2 = f4 - ((ckw)list2.get(j)).a; 
                        a(paramCanvas, f2, f3 + f10, cfv2.a);
                        f4 = f2;
                        if (cfp == cfp.LEFT_TO_RIGHT)
                          f4 = f2 + ((ckw)list2.get(j)).a; 
                        if (cfp == cfp.RIGHT_TO_LEFT) {
                          f2 = -f8;
                        } else {
                          f2 = f8;
                        } 
                        f2 += f4;
                      } else {
                        if (cfp == cfp.RIGHT_TO_LEFT) {
                          f4 = -f9;
                        } else {
                          f4 = f9;
                        } 
                        f2 = f4 + f2;
                      } 
                      j++;
                      continue;
                    } 
                    return;
                  } 
                case 1:
                  f2 = f4;
                case 2:
                  f2 = this.s.n() - f4 - this.c.b;
                case 3:
                  break;
              } 
              f2 = (this.s.n() - this.c.b) / 2.0F + f4;
            case 2:
              break;
          } 
          break;
        case 1:
          if (list1 != cfs.VERTICAL)
            f2 += this.s.g(); 
          f1 = f2;
          if (cfp == cfp.RIGHT_TO_LEFT)
            f1 = f2 + this.c.a; 
        case 2:
          if (list1 == cfs.VERTICAL) {
            f2 = this.s.o() - f2;
          } else {
            f2 = this.s.h() - f2;
          } 
          f1 = f2;
          if (cfp == cfp.LEFT_TO_RIGHT)
            f1 = f2 - this.c.a; 
        case 3:
          if (list1 == cfs.VERTICAL) {
            f1 = this.s.o() / 2.0F;
          } else {
            f1 = this.s.g() + this.s.j() / 2.0F;
          } 
          if (cfp == cfp.LEFT_TO_RIGHT) {
            f3 = f2;
          } else {
            f3 = -f2;
          } 
          f3 = f1 + f3;
          f1 = f3;
          if (list1 == cfs.VERTICAL) {
            double d1;
            double d2 = f3;
            if (cfp == cfp.LEFT_TO_RIGHT) {
              d1 = -this.c.a / 2.0D;
              d1 = f2 + d1;
            } else {
              d1 = this.c.a / 2.0D - f2;
            } 
            f1 = (float)(d1 + d2);
          } 
      } 
      f2 = 0.0F;
      switch (cjw.b[cfv2.ordinal()]) {
        default:
          j = 0;
          i = 0;
          f7 = 0.0F;
          while (true) {
            if (j < arrayOfCfv.length) {
              boolean bool;
              cfv1 = arrayOfCfv[j];
              if (cfv1.b != cfq.NONE) {
                bool = true;
              } else {
                bool = false;
              } 
              if (Float.isNaN(cfv1.c)) {
                f8 = f6;
              } else {
                f8 = clg.a(cfv1.c);
              } 
              if (bool) {
                if (cfp == cfp.LEFT_TO_RIGHT) {
                  f4 = f1 + f7;
                } else {
                  f4 = f1 - f8 - f7;
                } 
                a(paramCanvas, f4, f2 + f12, cfv1, this.c);
                f3 = f4;
                if (cfp == cfp.LEFT_TO_RIGHT)
                  f3 = f4 + f8; 
              } else {
                f3 = f1;
              } 
              if (cfv1.a != null) {
                if (bool && i == 0) {
                  if (cfp == cfp.LEFT_TO_RIGHT) {
                    f4 = f5;
                  } else {
                    f4 = -f5;
                  } 
                  f3 += f4;
                } else if (i != 0) {
                  f3 = f1;
                } 
                f4 = f3;
                if (cfp == cfp.RIGHT_TO_LEFT)
                  f4 = f3 - clg.a(this.a, cfv1.a); 
                if (i == 0) {
                  a(paramCanvas, f4, f2 + f10, cfv1.a);
                } else {
                  f2 += f10 + f11;
                  a(paramCanvas, f4, f2 + f10, cfv1.a);
                } 
                f3 = f2 + f10 + f11;
                f2 = 0.0F;
              } else {
                f4 = f7 + f8 + f9;
                i = 1;
                f3 = f2;
                f2 = f4;
              } 
              j++;
              f7 = f2;
              f2 = f3;
              continue;
            } 
            return;
          } 
        case 1:
          if (cfv1 == cfr.CENTER) {
            f2 = 0.0F;
          } else {
            f2 = this.s.f();
          } 
          f2 += f4;
        case 2:
          if (cfv1 == cfr.CENTER) {
            f2 = this.s.n();
          } else {
            f2 = this.s.i();
          } 
          f2 -= this.c.b + f4;
        case 3:
          break;
      } 
      f2 = this.s.n() / 2.0F - this.c.b / 2.0F + this.c.G();
    } 
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, cfv paramcfv, cfn paramcfn) {
    DashPathEffect dashPathEffect;
    if (paramcfv.f == 1122868 || paramcfv.f == 1122867 || paramcfv.f == 0)
      return; 
    int i = paramCanvas.save();
    cfq cfq2 = paramcfv.b;
    cfq cfq1 = cfq2;
    if (cfq2 == cfq.DEFAULT)
      cfq1 = paramcfn.o(); 
    this.b.setColor(paramcfv.f);
    if (Float.isNaN(paramcfv.c)) {
      f1 = paramcfn.p();
    } else {
      f1 = paramcfv.c;
    } 
    float f2 = clg.a(f1);
    float f1 = f2 / 2.0F;
    switch (cjw.d[cfq1.ordinal()]) {
      default:
        paramCanvas.restoreToCount(i);
        return;
      case 3:
      case 4:
        this.b.setStyle(Paint.Style.FILL);
        paramCanvas.drawCircle(paramFloat1 + f1, paramFloat2, f1, this.b);
      case 5:
        this.b.setStyle(Paint.Style.FILL);
        paramCanvas.drawRect(paramFloat1, paramFloat2 - f1, paramFloat1 + f2, f1 + paramFloat2, this.b);
      case 6:
        break;
    } 
    if (Float.isNaN(paramcfv.d)) {
      f1 = paramcfn.q();
    } else {
      f1 = paramcfv.d;
    } 
    f1 = clg.a(f1);
    if (paramcfv.e == null) {
      dashPathEffect = paramcfn.r();
    } else {
      dashPathEffect = ((cfv)dashPathEffect).e;
    } 
    this.b.setStyle(Paint.Style.STROKE);
    this.b.setStrokeWidth(f1);
    this.b.setPathEffect((PathEffect)dashPathEffect);
    this.f.reset();
    this.f.moveTo(paramFloat1, paramFloat2);
    this.f.lineTo(f2 + paramFloat1, paramFloat2);
    paramCanvas.drawPath(this.f, this.b);
  }
  
  protected void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, String paramString) {
    paramCanvas.drawText(paramString, paramFloat1, paramFloat2, this.a);
  }
  
  public void a(cgo<?> paramcgo) {
    if (!this.c.h()) {
      this.d.clear();
      int i = 0;
      label51: while (i < paramcgo.d()) {
        Object object = paramcgo.a(i);
        List<Integer> list = object.l();
        int k = object.I();
        if (object instanceof cik && ((cik)object).c()) {
          cik cik = (cik)object;
          String[] arrayOfString = cik.i();
          for (int m = 0; m < list.size() && m < cik.b(); m++)
            this.d.add(new cfv(arrayOfString[m % arrayOfString.length], object.w(), object.x(), object.y(), object.z(), ((Integer)list.get(m)).intValue())); 
          if (cik.p() != null) {
            this.d.add(new cfv(object.p(), cfq.NONE, Float.NaN, Float.NaN, null, 1122867));
            continue;
          } 
          continue;
        } 
        if (object instanceof cis) {
          cis cis = (cis)object;
          for (int m = 0; m < list.size() && m < k; m++)
            this.d.add(new cfv(cis.m(m).b(), object.w(), object.x(), object.y(), object.z(), ((Integer)list.get(m)).intValue())); 
          if (cis.p() != null) {
            this.d.add(new cfv(object.p(), cfq.NONE, Float.NaN, Float.NaN, null, 1122867));
            continue;
          } 
          continue;
        } 
        if (object instanceof cin && ((cin)object).g() != 1122867) {
          int m = ((cin)object).g();
          k = ((cin)object).f();
          this.d.add(new cfv(null, object.w(), object.x(), object.y(), object.z(), m));
          this.d.add(new cfv(object.p(), object.w(), object.x(), object.y(), object.z(), k));
          continue;
        } 
        int j = 0;
        while (true) {
          if (j < list.size() && j < k) {
            String str;
            if (j < list.size() - 1 && j < k - 1) {
              str = null;
            } else {
              str = paramcgo.a(i).p();
            } 
            this.d.add(new cfv(str, object.w(), object.x(), object.y(), object.z(), ((Integer)list.get(j)).intValue()));
            j++;
            continue;
          } 
          i++;
          continue label51;
        } 
      } 
      if (this.c.f() != null)
        Collections.addAll(this.d, this.c.f()); 
      this.c.a(this.d);
    } 
    Typeface typeface = this.c.H();
    if (typeface != null)
      this.a.setTypeface(typeface); 
    this.a.setTextSize(this.c.I());
    this.a.setColor(this.c.J());
    this.c.a(this.a, this.s);
  }
  
  public Paint b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cjv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */