import java.util.concurrent.atomic.AtomicBoolean;

final class fp implements fa<TResult, Void> {
  fp(AtomicBoolean paramAtomicBoolean, fw paramfw) {}
  
  public Void a(fd<TResult> paramfd) {
    if (this.a.compareAndSet(false, true)) {
      this.b.b(paramfd);
      return null;
    } 
    paramfd.g();
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */