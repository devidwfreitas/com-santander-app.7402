import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.LinkedList;
import java.util.List;

final class nkq implements niv, nix, njd, njj, njk, njm, njo {
  private final nkj a;
  
  private final nhp b;
  
  private final ngq c;
  
  private final nkd[] d;
  
  private final nim e;
  
  private final nhc f;
  
  private final String g;
  
  private final List<njq> h;
  
  private volatile nhg i;
  
  private nhe j;
  
  private nhd k;
  
  private nin l;
  
  private boolean m;
  
  private boolean n;
  
  private String o;
  
  private volatile boolean p;
  
  nkq(nkj paramnkj, nhp paramnhp, njz paramnjz) {
    this(paramnkj, paramnhp, paramnjz, ngq.a((Context)paramnkj.b()));
  }
  
  private nkq(nkj paramnkj, nhp paramnhp, njz paramnjz, ngq paramngq) {
    this.a = paramnkj;
    this.g = paramnjz.c();
    this.f = paramnkj.o();
    this.e = new nim(paramnkj);
    this.d = paramnkj.i().<nkd>toArray(new nkd[paramnkj.i().size()]);
    this.b = paramnhp;
    this.c = paramngq;
    this.h = new LinkedList<njq>();
    a(paramnkj.q());
  }
  
  private void a() {
    if (this.k == null && this.l.k()) {
      this.k = new nhd(this.a, this.b, this.g);
      this.b.a(this.k);
      return;
    } 
    if (this.k != null && !this.l.k()) {
      this.b.b(this.k);
      this.k = null;
      return;
    } 
  }
  
  private boolean a(int paramInt) {
    return (this.e.a() + paramInt < this.l.c());
  }
  
  private boolean a(nil paramnil) {
    int i;
    boolean bool1;
    boolean bool = false;
    if (paramnil == null) {
      i = 0;
    } else {
      i = 1;
    } 
    boolean bool2 = a(i);
    if (bool2) {
      bool1 = bool2;
      if (paramnil != null) {
        this.f.b(nkf.dispatch_queue_debug_queued_batch, new Object[] { paramnil, Integer.valueOf(i + this.e.a()), Integer.valueOf(this.l.c()) });
        bool1 = bool2;
      } 
    } else {
      bool2 = d();
      if (bool2) {
        bool1 = bool2;
        if (paramnil != null) {
          this.f.b(nkf.dispatch_queue_debug_queued_battery_low, new Object[] { paramnil });
          bool1 = bool2;
        } 
      } else {
        bool2 = e();
        if (bool2) {
          bool1 = bool2;
          if (paramnil != null) {
            if (this.l.d()) {
              i = nkf.dispatch_queue_debug_queued_no_wifi;
            } else {
              i = nkf.dispatch_queue_debug_queued_no_network;
            } 
            this.f.b(i, new Object[] { paramnil });
            bool1 = bool2;
          } 
        } else {
          if (!f()) {
            bool2 = true;
          } else {
            bool2 = false;
          } 
          bool1 = bool2;
          if (bool2) {
            bool1 = bool2;
            if (paramnil != null) {
              this.f.b(nkf.dispatch_queue_debug_queued_dispatcher_not_ready, new Object[] { paramnil });
              bool1 = bool2;
            } 
          } 
        } 
      } 
    } 
    bool2 = bool1;
    if (paramnil != null)
      for (i = bool;; i++) {
        bool2 = bool1;
        if (i < this.d.length) {
          bool1 = this.d[i].a(paramnil, bool1);
          if (bool1)
            return bool1; 
        } else {
          return bool2;
        } 
      }  
    return bool2;
  }
  
  private void b() {
    if (this.l.i() && this.i == null) {
      this.i = new nhg(this.a, this.b);
      this.b.a(this.i);
      this.b.a(h());
      this.i.a(this.o, false);
      return;
    } 
    if (!this.l.i() && this.i != null) {
      this.b.b(this.i);
      this.i = null;
      this.m = false;
      this.n = false;
      return;
    } 
  }
  
  private void c() {
    if (this.l.j() && this.j == null) {
      this.j = new nhe(this.a, this.b, this.f, this.g);
      this.b.a(this.j);
      this.j.a(this.o);
      return;
    } 
    if (!this.l.j() && this.j != null) {
      this.b.b(this.j);
      this.j = null;
      return;
    } 
  }
  
  private boolean c(nil paramnil) {
    boolean bool = false;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < this.d.length) {
        nkd nkd1 = this.d[i];
        if (nkd1.a(paramnil)) {
          this.f.b(nkf.dispatch_queue_debug_format_suppressed_by, new Object[] { nkd1, paramnil });
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  private boolean d() {
    return (this.p && this.l.e());
  }
  
  private boolean e() {
    return this.l.d() ? (!this.c.a()) : (!this.c.b());
  }
  
  private boolean f() {
    boolean bool;
    if (this.l.j() || this.l.k()) {
      bool = true;
    } else {
      bool = false;
    } 
    return !((!bool || this.l.i()) && (!this.l.i() || !this.n) && (!bool || !this.l.i() || !this.m));
  }
  
  private void g() {
    if (this.e.a() != 0 && !a((nil)null)) {
      nil[] arrayOfNil = this.e.b();
      int i = 0;
      while (true) {
        if (i < arrayOfNil.length) {
          this.b.b(new nhz(arrayOfNil[i]));
          i++;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private Runnable h() {
    return new nkr(this);
  }
  
  public void a(WebView paramWebView, boolean paramBoolean) {
    this.m = true;
    this.n = paramBoolean;
    g();
  }
  
  public void a(String paramString, boolean paramBoolean) {
    boolean bool = true;
    if (!TextUtils.equals(this.o, paramString)) {
      if (TextUtils.isEmpty(this.o)) {
        this.f.c(nkf.dispatch_router_join_trace, new Object[] { paramString });
      } else if (TextUtils.isEmpty(paramString)) {
        this.f.c(nkf.dispatch_router_leave_trace, new Object[] { this.o });
      } else {
        this.f.c(nkf.dispatch_router_update_trace, new Object[] { this.o, paramString });
      } 
      this.o = paramString;
      if (this.j != null)
        this.j.a(paramString); 
      if (this.i != null) {
        nhg nhg1 = this.i;
        if (!paramBoolean) {
          paramBoolean = bool;
        } else {
          paramBoolean = false;
        } 
        nhg1.a(paramString, paramBoolean);
        return;
      } 
    } 
  }
  
  public void a(nin paramnin) {
    this.l = paramnin;
    this.e.a(this.l.b(), this.l.a());
    if (this.l.h() == null)
      return; 
    a();
    c();
    b();
    g();
  }
  
  public void a(njq paramnjq) {
    this.h.add(paramnjq);
    nhg nhg1 = this.i;
    if (nhg1 == null)
      return; 
    nhg1.a().a(paramnjq);
  }
  
  public void a(boolean paramBoolean) {
    this.p = paramBoolean;
  }
  
  public void b(nil paramnil) {
    if (c(paramnil))
      return; 
    if (a(paramnil)) {
      paramnil.b("was_queued", String.valueOf(true));
      this.e.a(paramnil);
      this.b.b(new nhx(paramnil));
      return;
    } 
    if (this.e.a() > 0) {
      nil[] arrayOfNil = this.e.b();
      for (int i = 0; i < arrayOfNil.length; i++)
        this.b.b(new nhz(arrayOfNil[i])); 
    } 
    paramnil.b("was_queued", String.valueOf(false));
    this.b.b(new nhz(paramnil));
  }
  
  public void b(njq paramnjq) {
    this.h.remove(paramnjq);
    nhg nhg1 = this.i;
    if (nhg1 == null)
      return; 
    nhg1.a().b(paramnjq);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */