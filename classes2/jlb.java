import java.util.HashMap;
import org.json.JSONObject;

public class jlb implements jla {
  private static final String a = "individual-investment/v1/customer-portfolio/consolidated-position";
  
  public void a(gkw<jdf> paramgkw, jdg paramjdg) {
    (new jle(new jlc(this, paramgkw))).execute((Object[])new jdg[] { paramjdg });
  }
  
  public void a(irs<jdf> paramirs) {
    jdf jdf = new jdf();
    try {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      hashMap.put("flagOnlyTotalBalance", "true");
      String str1 = gnp.a(hashMap);
      String str2 = String.valueOf(mzx.a().c().get("appKey"));
      ir ir = gnp.a().a("individual-investment/v1/customer-portfolio/consolidated-position?gw-app-key=" + str2 + "&" + str1, im.POST, new JSONObject(), true);
      gnp.a().b().a(ir, new jld(this, jdf, paramirs));
      return;
    } catch (Exception exception) {
      paramirs.a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jlb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */