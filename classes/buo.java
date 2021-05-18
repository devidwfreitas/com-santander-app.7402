import java.util.concurrent.FutureTask;

final class buo implements Runnable {
  buo(but parambut, bus parambus) {}
  
  public void run() {
    FutureTask<bum> futureTask = null;
    bum bum = new bum();
    try {
      FutureTask<bum> futureTask1;
      FutureTask<bum> futureTask2;
      if (this.a.a()) {
        buw buw = bva.c(bhv.h(), this.a);
        buw.a();
        futureTask1 = bun.a(buw, this.a);
        bhv.f().execute(futureTask1);
      } else {
        futureTask1 = null;
      } 
      if (this.a.f()) {
        futureTask2 = bun.a(this.a);
        bhv.f().execute(futureTask2);
      } else {
        futureTask2 = null;
      } 
      if (this.a.l()) {
        futureTask = bun.b(this.a);
        bhv.f().execute(futureTask);
      } 
      if (futureTask != null)
        try {
          bum bum1 = futureTask.get();
          bum.g = bum1.g;
          bum.f = bum1.f;
        } catch (Exception exception) {} 
      if (futureTask2 != null)
        try {
          bum bum1 = futureTask2.get();
          bum.c = bum1.c;
          bum.d = bum1.d;
          bum.e = bum1.e;
        } catch (Exception exception) {} 
      if (futureTask1 != null)
        try {
          bum bum1 = futureTask1.get();
          bum.b = bum1.b;
          bum.a = bum1.a;
        } catch (Exception exception) {} 
    } catch (buy buy) {
      bun.a("Exception scanning for locations", buy);
      bum.b = buy.a;
    } catch (Exception exception) {
      bun.a("Exception requesting a location package", exception);
    } 
    this.b.a(bum);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */