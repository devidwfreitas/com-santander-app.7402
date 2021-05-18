import java.net.InetAddress;

final class eoo extends ekn<InetAddress> {
  public InetAddress a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return InetAddress.getByName(paramepo.h());
  }
  
  public void a(eps parameps, InetAddress paramInetAddress) {
    String str;
    if (paramInetAddress == null) {
      paramInetAddress = null;
    } else {
      str = paramInetAddress.getHostAddress();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eoo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */