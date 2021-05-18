import java.util.concurrent.atomic.AtomicBoolean;

final class fq implements fa<Object, Void> {
  fq(AtomicBoolean paramAtomicBoolean, fw paramfw) {}
  
  public Void a(fd<Object> paramfd) {
    if (this.a.compareAndSet(false, true)) {
      this.b.b(paramfd);
      return null;
    } 
    paramfd.g();
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */