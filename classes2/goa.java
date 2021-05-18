import java.util.Properties;

class goa implements gkv {
  goa(gnz paramgnz, ih paramih) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject == null || paramObject.a() == null || "".equals(paramObject.a())) {
      gnp.a().a(false);
      this.a.onFailure(new is(500, "Ticket null"));
      return;
    } 
    Properties properties = mzx.a().c();
    paramObject = gnz.a(this.b, (kkt)paramObject, properties);
    try {
      gnz.a(this.b).a((iq)paramObject, new gob(this));
      return;
    } catch (Exception exception) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */