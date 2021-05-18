import java.util.Collection;

class ngp {
  private volatile int a;
  
  private final long b = 0L;
  
  private final nfu<nga> c = new nfu<nga>();
  
  private final nfu<ngb> d = new nfu<ngb>();
  
  private final nfu<ngc> e;
  
  private final nfu<nfz> f;
  
  ngp() {
    this.f = new nfu<nfz>();
    this.e = new nfu<ngc>();
  }
  
  ngp(long paramLong, Collection<nfz> paramCollection, Collection<nga> paramCollection1, Collection<ngb> paramCollection2, Collection<ngc> paramCollection3) {
    this.e = new nfu<ngc>(paramCollection3);
    this.f = new nfu<nfz>(paramCollection);
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject != null && paramObject instanceof ngp) {
      paramObject = paramObject;
      if (this.b == ((ngp)paramObject).b && this.c.equals(((ngp)paramObject).c) && this.d.equals(((ngp)paramObject).d) && this.e.equals(((ngp)paramObject).e) && this.f.equals(((ngp)paramObject).f))
        return true; 
    } 
    return false;
  }
  
  public final long f() {
    return this.b;
  }
  
  public final nfu<nga> g() {
    return this.c;
  }
  
  public final nfu<ngb> h() {
    return this.d;
  }
  
  public int hashCode() {
    int j = this.a;
    int i = j;
    if (j == 0) {
      i = (((((int)(this.b ^ this.b >>> 32L) + 527) * 31 + this.f.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode()) * 31 + this.e.hashCode();
      this.a = i;
    } 
    return i;
  }
  
  public final nfu<ngc> i() {
    return this.e;
  }
  
  public final nfu<nfz> j() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */