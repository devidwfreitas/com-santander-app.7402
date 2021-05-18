import java.util.EventListener;
import java.util.Iterator;

final class ngu extends ngs<nge, nfx> {
  public ngu(nfu<nfx> paramnfu1, nfu<nfx> paramnfu2) {
    super(nge.class, paramnfu1, paramnfu2);
  }
  
  public void a(nge paramnge) {
    if (c() != null) {
      Iterator<nfx> iterator = c().iterator();
      while (iterator.hasNext())
        paramnge.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (nfx nfx : e())
        paramnge.a(b().b(nfx.b()), nfx);  
    if (d() != null) {
      Iterator<nfx> iterator = d().iterator();
      while (iterator.hasNext())
        paramnge.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */