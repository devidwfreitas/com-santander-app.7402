import android.net.Uri;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

public final class ngz implements nje {
  private final String a;
  
  private final AtomicLong b;
  
  private final AtomicBoolean c;
  
  private final nhc d;
  
  private final nhp e;
  
  private final nik f;
  
  private ngm g;
  
  public ngz(nkj paramnkj, nhp paramnhp, String paramString) {
    String str;
    this.e = paramnhp;
    this.b = new AtomicLong(0L);
    this.c = new AtomicBoolean(false);
    this.d = paramnkj.o();
    this.f = a();
    this.g = paramnkj.m();
    if (paramnkj.n() == null) {
      str = (new Uri.Builder()).scheme("https").authority("visitor-service.tealiumiq.com").appendPath(paramnkj.c()).appendPath("main").appendPath(paramString).build().toString();
    } else {
      str = str.n();
    } 
    this.a = str;
  }
  
  private nik a() {
    return new nha(this);
  }
  
  private void a(ngm paramngm1, ngm paramngm2) {
    boolean bool1;
    boolean bool2;
    ngm ngm1 = null;
    if (paramngm1 == null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramngm2 == null) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if ((!bool1 || !bool2) && (bool1 || !paramngm1.equals(paramngm2))) {
      nfu<ngc> nfu1;
      nfu<ngc> nfu2;
      nfu<nfw> nfu3;
      nfu<nfw> nfu4;
      this.e.a(new nhb(paramngm1, paramngm2));
      if (bool1) {
        nfu3 = null;
      } else {
        nfu3 = paramngm1.a();
      } 
      if (bool2) {
        nfu4 = null;
      } else {
        nfu4 = paramngm2.a();
      } 
      a(new ngt(nfu3, nfu4));
      if (bool1) {
        nfu3 = null;
      } else {
        nfu3 = (nfu)paramngm1.b();
      } 
      if (bool2) {
        nfu4 = null;
      } else {
        nfu4 = (nfu)paramngm2.b();
      } 
      a(new ngu((nfu)nfu3, (nfu)nfu4));
      if (bool1) {
        nfu3 = null;
      } else {
        nfu3 = (nfu)paramngm1.j();
      } 
      if (bool2) {
        nfu4 = null;
      } else {
        nfu4 = (nfu)paramngm2.j();
      } 
      a(new ngv((nfu)nfu3, (nfu)nfu4));
      if (bool1) {
        nfu3 = null;
      } else {
        nfu3 = (nfu)paramngm1.g();
      } 
      if (bool2) {
        nfu4 = null;
      } else {
        nfu4 = (nfu)paramngm2.g();
      } 
      a(new ngw((nfu)nfu3, (nfu)nfu4));
      if (bool1) {
        nfu3 = null;
      } else {
        nfu3 = (nfu)paramngm1.h();
      } 
      if (bool2) {
        nfu4 = null;
      } else {
        nfu4 = (nfu)paramngm2.h();
      } 
      a(new ngx((nfu)nfu3, (nfu)nfu4));
      if (bool1) {
        paramngm1 = null;
      } else {
        nfu1 = paramngm1.i();
      } 
      if (bool2) {
        paramngm2 = ngm1;
      } else {
        nfu2 = paramngm2.i();
      } 
      a(new ngy(nfu1, nfu2));
      return;
    } 
  }
  
  private void a(ngs<?, ?> paramngs) {
    if (paramngs.a())
      this.e.a(paramngs); 
  }
  
  public void a(nil paramnil) {
    if (this.c.compareAndSet(false, true)) {
      long l2 = SystemClock.uptimeMillis() - this.b.get();
      long l1 = l2;
      if (l2 > 10000L) {
        Runnable runnable1 = nii.b(this.a).a();
        nhp nhp1 = this.e;
        l1 = 0L;
        nhp1.a(runnable1, 0L);
      } 
      Runnable runnable = nii.b(this.a).a(this.f).a();
      this.e.a(runnable, l1 + 10000L);
      if (this.d.a()) {
        this.d.a(nkf.visitor_profile_retriever_fetching, new Object[] { this.a });
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */