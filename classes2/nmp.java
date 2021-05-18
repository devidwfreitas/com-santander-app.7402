import java.lang.annotation.Annotation;

@nlv
public final class nmp<M extends Annotation> implements nnb<M> {
  private final nna a;
  
  private final M b;
  
  public nmp(nna paramnna, M paramM) {
    this.a = nmd.<nna>a(paramnna);
    this.b = (M)nmd.<Annotation>a((Annotation)paramM);
  }
  
  public Class<? extends Annotation> a() {
    return this.a.a();
  }
  
  public void b() {
    this.a.b();
  }
  
  public void c() {
    this.a.c();
  }
  
  public M d() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */