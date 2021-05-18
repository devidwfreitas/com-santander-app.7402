import java.util.concurrent.Callable;

class bpt implements Callable<Void> {
  bpt(bps parambps, Callable paramCallable) {}
  
  public Void a() {
    try {
      bps.a(this.b, this.a.call());
      return null;
    } finally {
      bps.a(this.b).countDown();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bpt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */