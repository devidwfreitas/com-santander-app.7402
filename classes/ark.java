import java.util.Calendar;
import java.util.Date;
import java.util.Observable;
import java.util.Observer;
import java.util.UUID;

public class ark implements Cloneable, Observer {
  private UUID a;
  
  private long b;
  
  private aqb c;
  
  private apu d;
  
  private String e;
  
  private String f;
  
  private long g;
  
  private String h;
  
  private Date i;
  
  private volatile boolean j;
  
  private boolean k;
  
  private boolean l;
  
  private boolean m;
  
  private boolean n;
  
  private boolean o;
  
  private Date p;
  
  private arj q;
  
  private arh r;
  
  private volatile boolean s;
  
  private arc t;
  
  private String u;
  
  private boolean v;
  
  private boolean w;
  
  private Observable x;
  
  public ark() {
    this.i = Calendar.getInstance().getTime();
    this.a = UUID.randomUUID();
  }
  
  public ark(long paramLong1, aqb paramaqb, apu paramapu, String paramString1, String paramString2, long paramLong2, String paramString3) {
    this.b = paramLong1;
    this.c = paramaqb;
    this.d = paramapu;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramLong2;
    this.h = paramString3;
    a((arj)null);
    this.i = Calendar.getInstance().getTime();
    this.a = UUID.randomUUID();
  }
  
  public ark(long paramLong1, aqb paramaqb, apu paramapu, String paramString1, String paramString2, long paramLong2, String paramString3, arj paramarj) {
    this.b = paramLong1;
    this.c = paramaqb;
    this.d = paramapu;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramLong2;
    this.h = paramString3;
    a(paramarj);
    this.i = Calendar.getInstance().getTime();
    this.a = UUID.randomUUID();
  }
  
  private void c(Date paramDate) {
    this.p = paramDate;
  }
  
  private void w() {
    if (this.x != null && this.x.countObservers() > 0) {
      this.x.deleteObserver(this);
      this.w = false;
    } 
  }
  
  public long a() {
    return this.b;
  }
  
  public String a(Date paramDate) {
    String str1;
    Calendar calendar = ase.a();
    calendar.setTime(paramDate);
    calendar.add(13, (int)this.g);
    int i = calendar.get(11);
    long l = calendar.get(12);
    if (String.valueOf(i).length() == 1) {
      str1 = "0".concat(String.valueOf(i));
    } else {
      str1 = String.valueOf(i);
    } 
    if (String.valueOf(l).length() == 1) {
      String str = "0".concat(String.valueOf(l));
      return str1.concat(":").concat(str);
    } 
    String str2 = String.valueOf(l);
    return str1.concat(":").concat(str2);
  }
  
  public void a(long paramLong) {
    this.b = paramLong;
  }
  
  public void a(apu paramapu) {
    this.d = paramapu;
  }
  
  public void a(aqb paramaqb) {
    this.c = paramaqb;
  }
  
  public void a(arc paramarc) {
    this.t = paramarc;
  }
  
  public void a(arh paramarh) {
    this.r = paramarh;
  }
  
  public void a(arj paramarj) {
    this.q = paramarj;
  }
  
  public void a(String paramString) {
    this.e = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public boolean a(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null) {
      bool1 = bool2;
      if (paramObject instanceof ark) {
        bool1 = bool2;
        if (this.f != null) {
          bool1 = bool2;
          if (this.f.equals(((ark)paramObject).f))
            bool1 = true; 
        } 
      } 
    } 
    return bool1;
  }
  
  public aqb b() {
    return this.c;
  }
  
  public void b(long paramLong) {
    this.g = paramLong;
  }
  
  public void b(String paramString) {
    this.f = paramString;
  }
  
  public void b(Date paramDate) {
    this.i = paramDate;
  }
  
  public void b(boolean paramBoolean) {
    this.m = paramBoolean;
  }
  
  public apu c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.h = paramString;
  }
  
  public void c(boolean paramBoolean) {
    this.k = paramBoolean;
  }
  
  public Object clone() {
    return super.clone();
  }
  
  public String d() {
    return this.e;
  }
  
  public void d(String paramString) {
    this.u = paramString;
  }
  
  public void d(boolean paramBoolean) {
    this.l = paramBoolean;
    this.m = paramBoolean;
    c(Calendar.getInstance().getTime());
  }
  
  public String e() {
    return this.f;
  }
  
  public void e(boolean paramBoolean) {
    this.n = paramBoolean;
    if (paramBoolean && l() != null)
      l().e(true); 
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null) {
      bool1 = bool2;
      if (paramObject instanceof ark) {
        bool1 = bool2;
        if (a() == ((ark)paramObject).a())
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  public long f() {
    return this.g;
  }
  
  public void f(boolean paramBoolean) {
    this.o = paramBoolean;
    if (this.q != null && !this.w && paramBoolean) {
      this.w = true;
      this.x = this.q;
      this.x.addObserver(this);
    } 
  }
  
  public String g() {
    return this.h;
  }
  
  public void g(boolean paramBoolean) {
    if (l() != null)
      l().h(paramBoolean); 
    this.s = paramBoolean;
  }
  
  public Date h() {
    return this.i;
  }
  
  public void h(boolean paramBoolean) {
    this.v = paramBoolean;
  }
  
  public boolean i() {
    return this.j;
  }
  
  public boolean j() {
    return this.m;
  }
  
  public arh k() {
    return this.r;
  }
  
  public arj l() {
    return this.q;
  }
  
  public boolean m() {
    return this.k;
  }
  
  public boolean n() {
    return this.l;
  }
  
  public boolean o() {
    if (l() != null && l().l())
      this.n = true; 
    return this.n;
  }
  
  public boolean p() {
    return this.o;
  }
  
  public boolean q() {
    return (l() != null && l().v()) ? true : this.s;
  }
  
  public Date r() {
    return this.p;
  }
  
  public arc s() {
    return this.t;
  }
  
  public String t() {
    return this.u;
  }
  
  public String toString() {
    StringBuilder stringBuilder = (new StringBuilder()).append("Transcript{id=").append(this.b).append(", user=").append(this.c).append(", event=").append(this.d).append(", message='").append(this.e).append('\'').append(", nickName='").append(this.f).append('\'').append(", time=").append(this.g).append(", peerId=").append(this.h).append(", createDate=").append(this.i).append(", showed=").append(this.j).append(", newEvent=").append(this.s).append(", received=").append(this.m).append(", file=");
    if (l() != null) {
      arj arj1 = l();
    } else {
      str = "NULL";
    } 
    stringBuilder = stringBuilder.append(str).append(", jsonData=");
    if (this.u != null) {
      str = this.u;
      return stringBuilder.append(str).append('}').toString();
    } 
    String str = "NULL";
    return stringBuilder.append(str).append('}').toString();
  }
  
  public String u() {
    return (this.q != null && this.q.p() != null) ? this.q.p().c() : "";
  }
  
  public void update(Observable paramObservable, Object paramObject) {
    if (paramObservable instanceof arj) {
      paramObservable = paramObservable;
      f(paramObservable.n());
      d(paramObservable.e());
      c(paramObservable.f());
      b(paramObservable.g());
      e(paramObservable.l());
      a(paramObservable.m());
      g(true);
      if ((!this.o && this.p != null) || this.r != null || o() || paramObservable.w() || paramObservable.l())
        w(); 
    } 
  }
  
  public boolean v() {
    return this.v;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ark.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */