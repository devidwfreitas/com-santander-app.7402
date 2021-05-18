import java.util.concurrent.TimeUnit;

final class bku implements Runnable {
  bku(bkf parambkf, bkl parambkl) {}
  
  public void run() {
    bkq.c().a(this.a, this.b);
    if (bla.a() != blf.EXPLICIT_ONLY && bkq.c().b() > 100) {
      bkq.b(blm.EVENT_THRESHOLD);
      return;
    } 
    if (bkq.d() == null) {
      bkq.a(bkq.f().schedule(bkq.e(), 15L, TimeUnit.SECONDS));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */