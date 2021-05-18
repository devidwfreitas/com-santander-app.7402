import java.util.UUID;

final class eop extends ekn<UUID> {
  public UUID a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    return UUID.fromString(paramepo.h());
  }
  
  public void a(eps parameps, UUID paramUUID) {
    String str;
    if (paramUUID == null) {
      paramUUID = null;
    } else {
      str = paramUUID.toString();
    } 
    parameps.b(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */