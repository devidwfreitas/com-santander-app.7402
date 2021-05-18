import android.content.Context;

final class blw implements Runnable {
  blw(long paramLong, Context paramContext, String paramString) {}
  
  public void run() {
    if (blt.c() == null) {
      blt.a(new bmd(Long.valueOf(this.a), null));
      bme.a(this.b, this.c, (bmf)null, blt.d());
    } else if (blt.c().d() != null) {
      long l = this.a - blt.c().d().longValue();
      if (l > (blt.e() * 1000)) {
        bme.a(this.b, this.c, blt.c(), blt.d());
        bme.a(this.b, this.c, (bmf)null, blt.d());
        blt.a(new bmd(Long.valueOf(this.a), null));
      } else if (l > 1000L) {
        blt.c().f();
      } 
    } 
    blt.c().b(Long.valueOf(this.a));
    blt.c().k();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */