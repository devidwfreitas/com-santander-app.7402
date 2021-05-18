import android.content.Context;
import java.util.EventListener;
import java.util.Iterator;

class nki implements Runnable {
  nki(nkg paramnkg, nkj paramnkj, String paramString) {}
  
  public void run() {
    try {
      nkg.a(this.c).a(this.a.o());
      nkg.a(this.c).a(new nks(this.a, nkg.a(this.c)));
      nkg.a(this.c).a(new nla(this.b, this.a, nkg.a(this.c)));
      if (!nip.b((Context)this.a.b()))
        nkg.a(this.c).a(new nko((Context)this.a.b(), nkg.a(this.c))); 
      Iterator<EventListener> iterator = this.a.j().iterator();
      while (iterator.hasNext()) {
        if ((EventListener)iterator.next() instanceof ngf) {
          nkg.a(this.c).a(new ngz(this.a, nkg.a(this.c), nkg.b(this.c).c()));
          break;
        } 
      } 
      if (this.a.o().c())
        this.a.o().c(nkf.tealium_init_with, new Object[] { this.b, this.a.toString() }); 
      return;
    } catch (Throwable throwable) {
      this.a.o().a(nkf.tealium_error_init, throwable);
      nkg.c(this.b);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */