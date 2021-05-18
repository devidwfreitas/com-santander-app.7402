import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.support.annotation.CallSuper;
import android.support.annotation.FloatRange;
import android.support.annotation.Nullable;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class bdy implements ayg, ayz {
  private static final int e = 19;
  
  final Matrix a = new Matrix();
  
  final awu b;
  
  final bee c;
  
  final azq d;
  
  private final Path f = new Path();
  
  private final Matrix g = new Matrix();
  
  private final Paint h = new Paint(1);
  
  private final Paint i = new Paint(1);
  
  private final Paint j = new Paint(1);
  
  private final Paint k = new Paint();
  
  private final RectF l = new RectF();
  
  private final RectF m = new RectF();
  
  private final RectF n = new RectF();
  
  private final RectF o = new RectF();
  
  private final String p;
  
  @Nullable
  private azf q;
  
  @Nullable
  private bdy r;
  
  @Nullable
  private bdy s;
  
  private List<bdy> t;
  
  private final List<ayy<?, ?>> u = new ArrayList<ayy<?, ?>>();
  
  private boolean v = true;
  
  bdy(awu paramawu, bee parambee) {
    this.b = paramawu;
    this.c = parambee;
    this.p = parambee.f() + "#draw";
    this.k.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    this.i.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    if (parambee.l() == bei.Invert) {
      this.j.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    } else {
      this.j.setXfermode((Xfermode)new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    } 
    this.d = parambee.o().h();
    this.d.a(this);
    this.d.a(this);
    if (parambee.j() != null && !parambee.j().isEmpty()) {
      this.q = new azf(parambee.j());
      for (ayy<?, ?> ayy : this.q.b()) {
        a(ayy);
        ayy.a(this);
      } 
      for (ayy<?, ?> ayy : this.q.c()) {
        a(ayy);
        ayy.a(this);
      } 
    } 
    f();
  }
  
  @Nullable
  static bdy a(bee parambee, awu paramawu, awr paramawr) {
    switch (bea.a[parambee.k().ordinal()]) {
      default:
        Log.w("LOTTIE", "Unknown layer type " + parambee.k());
        return null;
      case 1:
        return new bek(paramawu, parambee);
      case 2:
        return new beb(paramawu, parambee, paramawr.b(parambee.g()), paramawr);
      case 3:
        return new bel(paramawu, parambee);
      case 4:
        return new bed(paramawu, parambee, paramawr.p());
      case 5:
        return new bej(paramawu, parambee);
      case 6:
        break;
    } 
    return new bem(paramawu, parambee);
  }
  
  private void a(Canvas paramCanvas) {
    awm.a("Layer#clearLayer");
    paramCanvas.drawRect(this.l.left - 1.0F, this.l.top - 1.0F, this.l.right + 1.0F, 1.0F + this.l.bottom, this.k);
    awm.b("Layer#clearLayer");
  }
  
  @SuppressLint({"WrongConstant"})
  private void a(Canvas paramCanvas, Matrix paramMatrix) {
    awm.a("Layer#drawMask");
    awm.a("Layer#saveLayer");
    paramCanvas.saveLayer(this.l, this.i, 19);
    awm.b("Layer#saveLayer");
    a(paramCanvas);
    int j = this.q.a().size();
    int i = 0;
    while (i < j) {
      int k;
      ayy ayy;
      bcm bcm = this.q.a().get(i);
      Path path = (Path)((ayy)this.q.b().get(i)).b();
      this.f.set(path);
      this.f.transform(paramMatrix);
      switch (bea.b[bcm.a().ordinal()]) {
        case 1:
          this.f.setFillType(Path.FillType.INVERSE_WINDING);
          ayy = this.q.c().get(i);
          k = this.h.getAlpha();
          this.h.setAlpha((int)(((Integer)ayy.b()).intValue() * 2.55F));
          paramCanvas.drawPath(this.f, this.h);
          this.h.setAlpha(k);
          i++;
          break;
      } 
    } 
    awm.a("Layer#restoreLayer");
    paramCanvas.restore();
    awm.b("Layer#restoreLayer");
    awm.b("Layer#drawMask");
  }
  
  private void a(boolean paramBoolean) {
    if (paramBoolean != this.v) {
      this.v = paramBoolean;
      g();
    } 
  }
  
  private void b(float paramFloat) {
    this.b.s().b().a(this.c.f(), paramFloat);
  }
  
  private void b(RectF paramRectF, Matrix paramMatrix) {
    this.m.set(0.0F, 0.0F, 0.0F, 0.0F);
    if (!e());
    int j = this.q.a().size();
    for (int i = 0; i < j; i++) {
      bcm bcm = this.q.a().get(i);
      Path path = (Path)((ayy)this.q.b().get(i)).b();
      this.f.set(path);
      this.f.transform(paramMatrix);
      switch (bea.b[bcm.a().ordinal()]) {
        case 1:
        case 2:
        case 3:
          return;
      } 
      this.f.computeBounds(this.o, false);
      if (i == 0) {
        this.m.set(this.o);
      } else {
        this.m.set(Math.min(this.m.left, this.o.left), Math.min(this.m.top, this.o.top), Math.max(this.m.right, this.o.right), Math.max(this.m.bottom, this.o.bottom));
      } 
    } 
    paramRectF.set(Math.max(paramRectF.left, this.m.left), Math.max(paramRectF.top, this.m.top), Math.min(paramRectF.right, this.m.right), Math.min(paramRectF.bottom, this.m.bottom));
  }
  
  private void c(RectF paramRectF, Matrix paramMatrix) {
    if (d() && this.c.l() != bei.Invert) {
      this.r.a(this.n, paramMatrix);
      paramRectF.set(Math.max(paramRectF.left, this.n.left), Math.max(paramRectF.top, this.n.top), Math.min(paramRectF.right, this.n.right), Math.min(paramRectF.bottom, this.n.bottom));
      return;
    } 
  }
  
  private void f() {
    if (!this.c.d().isEmpty()) {
      boolean bool;
      azb azb = new azb(this.c.d());
      azb.a();
      azb.a(new bdz(this, azb));
      if (azb.b().floatValue() == 1.0F) {
        bool = true;
      } else {
        bool = false;
      } 
      a(bool);
      a(azb);
      return;
    } 
    a(true);
  }
  
  private void g() {
    this.b.invalidateSelf();
  }
  
  private void h() {
    if (this.t == null) {
      if (this.s == null) {
        this.t = Collections.emptyList();
        return;
      } 
      this.t = new ArrayList<bdy>();
      bdy bdy1 = this.s;
      while (true) {
        if (bdy1 != null) {
          this.t.add(bdy1);
          bdy1 = bdy1.s;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void a() {
    g();
  }
  
  void a(@FloatRange(from = 0.0D, to = 1.0D) float paramFloat) {
    float f = paramFloat;
    if (this.c.b() != 0.0F)
      f = paramFloat / this.c.b(); 
    if (this.r != null)
      this.r.a(f); 
    for (int i = 0; i < this.u.size(); i++)
      ((ayy)this.u.get(i)).a(f); 
  }
  
  @SuppressLint({"WrongConstant"})
  public void a(Canvas paramCanvas, Matrix paramMatrix, int paramInt) {
    awm.a(this.p);
    if (!this.v) {
      awm.b(this.p);
      return;
    } 
    h();
    awm.a("Layer#parentMatrix");
    this.g.reset();
    this.g.set(paramMatrix);
    int i;
    for (i = this.t.size() - 1; i >= 0; i--)
      this.g.preConcat(((bdy)this.t.get(i)).d.d()); 
    awm.b("Layer#parentMatrix");
    float f = paramInt / 255.0F;
    paramInt = (int)(((Integer)this.d.a().b()).intValue() * f / 100.0F * 255.0F);
    if (!d() && !e()) {
      this.g.preConcat(this.d.d());
      awm.a("Layer#drawLayer");
      b(paramCanvas, this.g, paramInt);
      awm.b("Layer#drawLayer");
      b(awm.b(this.p));
      return;
    } 
    awm.a("Layer#computeBounds");
    this.l.set(0.0F, 0.0F, 0.0F, 0.0F);
    a(this.l, this.g);
    c(this.l, this.g);
    this.g.preConcat(this.d.d());
    b(this.l, this.g);
    this.l.set(0.0F, 0.0F, paramCanvas.getWidth(), paramCanvas.getHeight());
    awm.b("Layer#computeBounds");
    awm.a("Layer#saveLayer");
    paramCanvas.saveLayer(this.l, this.h, 31);
    awm.b("Layer#saveLayer");
    a(paramCanvas);
    awm.a("Layer#drawLayer");
    b(paramCanvas, this.g, paramInt);
    awm.b("Layer#drawLayer");
    if (e())
      a(paramCanvas, this.g); 
    if (d()) {
      awm.a("Layer#drawMatte");
      awm.a("Layer#saveLayer");
      paramCanvas.saveLayer(this.l, this.j, 19);
      awm.b("Layer#saveLayer");
      a(paramCanvas);
      this.r.a(paramCanvas, paramMatrix, paramInt);
      awm.a("Layer#restoreLayer");
      paramCanvas.restore();
      awm.b("Layer#restoreLayer");
      awm.b("Layer#drawMatte");
    } 
    awm.a("Layer#restoreLayer");
    paramCanvas.restore();
    awm.b("Layer#restoreLayer");
    b(awm.b(this.p));
  }
  
  @CallSuper
  public void a(RectF paramRectF, Matrix paramMatrix) {
    this.a.set(paramMatrix);
    this.a.preConcat(this.d.d());
  }
  
  public void a(ayy<?, ?> paramayy) {
    if (!(paramayy instanceof azo))
      this.u.add(paramayy); 
  }
  
  void a(@Nullable bdy parambdy) {
    this.r = parambdy;
  }
  
  public void a(@Nullable String paramString1, @Nullable String paramString2, @Nullable ColorFilter paramColorFilter) {}
  
  public void a(List<aye> paramList1, List<aye> paramList2) {}
  
  public String b() {
    return this.c.f();
  }
  
  abstract void b(Canvas paramCanvas, Matrix paramMatrix, int paramInt);
  
  void b(@Nullable bdy parambdy) {
    this.s = parambdy;
  }
  
  bee c() {
    return this.c;
  }
  
  boolean d() {
    return (this.r != null);
  }
  
  boolean e() {
    return (this.q != null && !this.q.b().isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bdy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */