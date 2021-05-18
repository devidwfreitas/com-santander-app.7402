import java.util.EventListener;
import java.util.Iterator;

final class ngx extends ngs<ngi, ngb> {
  public ngx(nfu<ngb> paramnfu1, nfu<ngb> paramnfu2) {
    super(ngi.class, paramnfu1, paramnfu2);
  }
  
  public void a(ngi paramngi) {
    if (c() != null) {
      Iterator<ngb> iterator = c().iterator();
      while (iterator.hasNext())
        paramngi.a(iterator.next(), null); 
    } 
    if (e() != null)
      for (ngb ngb : e())
        paramngi.a(b().b(ngb.b()), ngb);  
    if (d() != null) {
      Iterator<ngb> iterator = d().iterator();
      while (iterator.hasNext())
        paramngi.a(null, iterator.next()); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ngx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */