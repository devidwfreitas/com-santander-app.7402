import java.util.EventListener;
import java.util.Iterator;

final class ngt extends ngs<ngd, nfw> {
  public ngt(nfu<nfw> paramnfu1, nfu<nfw> paramnfu2) {
    super(ngd.class, paramnfu1, paramnfu2);
  }
  
  public void a(ngd paramngd) {
    if (c() != null) {
      Iterator<nfw> iterator = c().iterator();
      while (iterator.hasNext())
        paramngd.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (nfw nfw : e())
        paramngd.a(b().b(nfw.b()), nfw);  
    if (d() != null) {
      Iterator<nfw> iterator = d().iterator();
      while (iterator.hasNext())
        paramngd.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */