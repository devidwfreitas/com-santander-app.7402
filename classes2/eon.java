import java.net.URI;
import java.net.URISyntaxException;

final class eon extends ekn<URI> {
  public URI a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    try {
      String str = paramepo.h();
      return !"null".equals(str) ? new URI(str) : null;
    } catch (URISyntaxException uRISyntaxException) {
      throw new eka(uRISyntaxException);
    } 
  }
  
  public void a(eps parameps, URI paramURI) {
    String str;
    if (paramURI == null) {
      paramURI = null;
    } else {
      str = paramURI.toASCIIString();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */