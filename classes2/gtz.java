import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class gtz {
  private guf a;
  
  private Activity b;
  
  private RelativeLayout c;
  
  private Button d;
  
  private View e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private int h;
  
  private int i;
  
  private int j;
  
  private boolean k = true;
  
  private boolean l = false;
  
  private int m;
  
  private int n;
  
  private int o;
  
  private gty p;
  
  private RelativeLayout q;
  
  private gxa r;
  
  private RelativeLayout s;
  
  private ImageView t;
  
  private TextView u;
  
  private TextView v;
  
  public gtz(guf paramguf, Activity paramActivity) {
    this.a = paramguf;
    this.b = paramActivity;
  }
  
  @TargetApi(23)
  private void a() {
    this.p = gty.valueOf(this.a.b());
    if (miq.C().f().i().equals("PR"))
      this.p = gty.USER_SANTANDER; 
    if (this.p != null) {
      a(this.p);
      b(this.p);
      switch (gue.a[this.p.ordinal()]) {
        default:
          return;
        case 1:
          this.f.setBackgroundResource(2131624334);
          this.g.setBackgroundDrawable(this.b.getResources().getDrawable(2130838113));
          this.e.setBackgroundResource(2131624334);
          this.v.setTextColor(this.b.getResources().getColor(2131624334));
          this.t.setImageDrawable(this.b.getResources().getDrawable(2130838789));
          a(2131298833, 2131298834);
          return;
        case 2:
        case 3:
          this.f.setBackgroundResource(2131624333);
          this.g.setBackgroundDrawable(this.b.getResources().getDrawable(2130838112));
          this.e.setBackgroundResource(2131624333);
          this.v.setTextColor(this.b.getResources().getColor(2131624333));
          this.t.setImageDrawable(this.b.getResources().getDrawable(2130838721));
          a(2131298833, 2131298834);
          return;
        case 4:
        case 5:
          break;
      } 
      this.f.setBackgroundResource(2131624333);
      this.g.setBackgroundDrawable(this.b.getResources().getDrawable(2130838112));
      this.e.setBackgroundResource(2131624333);
      this.v.setTextColor(this.b.getResources().getColor(2131624333));
      this.t.setImageDrawable(this.b.getResources().getDrawable(2130838721));
      a(2131298834, 2131298834);
      return;
    } 
    this.q.setVisibility(8);
    Log.v("PORQUINHO OCULTADO", "segmento nao mapeado - " + this.a.b());
  }
  
  private void a(int paramInt1, int paramInt2) {
    if (this.r.d() != null) {
      gws gws = gws.valueOf(this.r.d());
      switch (gue.b[gws.ordinal()]) {
        default:
          return;
        case 1:
          this.u.setText(paramInt1);
          return;
        case 2:
          break;
      } 
      this.u.setText(paramInt2);
      return;
    } 
  }
  
  private void a(gty paramgty) {
    switch (gue.a[paramgty.ordinal()]) {
      default:
        return;
      case 2:
      case 3:
      case 4:
      case 5:
        this.d.setBackgroundDrawable(this.b.getResources().getDrawable(2130837506));
        return;
      case 1:
        break;
    } 
    this.d.setBackgroundDrawable(this.b.getResources().getDrawable(2130837507));
  }
  
  private View.OnTouchListener b() {
    return new gub(this);
  }
  
  private void b(int paramInt1, int paramInt2) {
    ValueAnimator valueAnimator = ValueAnimator.ofInt(new int[] { paramInt1, paramInt2 });
    valueAnimator.setDuration(300L);
    valueAnimator.addUpdateListener(new guc(this));
    valueAnimator.addListener(new gud(this));
    valueAnimator.start();
  }
  
  private void b(gty paramgty) {
    switch (gue.a[paramgty.ordinal()]) {
      default:
        return;
      case 2:
      case 3:
      case 4:
      case 5:
        this.d.setBackgroundDrawable(this.b.getResources().getDrawable(2130837504));
        return;
      case 1:
        break;
    } 
    this.d.setBackgroundDrawable(this.b.getResources().getDrawable(2130837505));
  }
  
  @TargetApi(21)
  private void c() {
    b(this.m, this.i);
    a(this.p);
    this.l = true;
    this.a.b(this.r);
  }
  
  @TargetApi(21)
  private void d() {
    b(this.m, this.o);
    b(this.p);
    this.l = false;
    this.a.c(this.r);
  }
  
  private void e() {
    int i = f();
    this.i = (int)(i * 0.7D);
    this.j = (int)(i * 0.3D);
  }
  
  private int f() {
    return (this.b.getResources().getDisplayMetrics()).heightPixels;
  }
  
  public void a(boolean paramBoolean) {
    if (!paramBoolean) {
      this.f.setVisibility(4);
      this.k = false;
      d();
    } 
  }
  
  public void a(boolean paramBoolean, gxa paramgxa) {
    this.r = paramgxa;
    this.s = (RelativeLayout)this.b.findViewById(2131757766);
    this.s.setVisibility(0);
    this.q = (RelativeLayout)this.b.findViewById(2131757664);
    this.c = (RelativeLayout)this.b.findViewById(2131755225);
    this.f = (LinearLayout)this.b.findViewById(2131757827);
    this.g = (LinearLayout)this.b.findViewById(2131757832);
    this.g.setOnClickListener(new gua(this, paramgxa));
    this.d = (Button)this.b.findViewById(2131755118);
    this.d.setOnTouchListener(b());
    this.e = this.b.findViewById(2131757768);
    this.u = (TextView)this.b.findViewById(2131757831);
    this.v = (TextView)this.b.findViewById(2131757830);
    this.t = (ImageView)this.b.findViewById(2131757829);
    e();
    a();
    this.c.setOnClickListener(null);
    a(paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gtz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */