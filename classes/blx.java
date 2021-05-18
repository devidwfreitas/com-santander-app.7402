import android.content.Context;
import java.util.concurrent.TimeUnit;

final class blx implements Runnable {
  blx(long paramLong, Context paramContext, String paramString) {}
  
  public void run() {
    long l1 = 0L;
    if (blt.c() == null)
      blt.a(new bmd(Long.valueOf(this.a), null)); 
    blt.c().b(Long.valueOf(this.a));
    if (blt.f().get() <= 0) {
      bly bly = new bly(this);
      blt.a(blt.g().schedule(bly, blt.e(), TimeUnit.SECONDS));
    } 
    long l2 = blt.h();
    if (l2 > 0L)
      l1 = (this.a - l2) / 1000L; 
    bma.a(this.c, l1);
    blt.c().k();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\blx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */