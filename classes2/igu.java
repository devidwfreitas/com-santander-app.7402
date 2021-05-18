import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONObject;

public class igu implements igs {
  private static final String a = "ERROR_JSON_OBJECT";
  
  private miq b;
  
  private igt c;
  
  private final Activity d;
  
  private iia e;
  
  private Dialog f;
  
  public igu(Activity paramActivity, igt paramigt) {
    this.d = paramActivity;
    this.c = paramigt;
    this.e = new iib();
    this.b = miq.C();
  }
  
  private gvb a(igc paramigc, igg paramigg) {
    gvb gvb = new gvb();
    gvb.i("formdigiFormProposta.Suc.End");
    gvb.j("formdigiFormPropostaShare");
    gvb.s(true);
    gvb.b(new ArrayList<gky>());
    for (String str : paramigc.b().split("\\|")) {
      if (str.contains(":")) {
        gvb.h().add(new gky(str.split(":")[0] + ": ", str.split(":")[1]));
      } else if (!str.equals("")) {
        gvb.h().add(new gky(str.split(":")[0] + ": ", ""));
      } 
    } 
    gvb.c("Formalização");
    gvb.d(true);
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.e(paramigc.c());
    gvb.h(paramigc.d());
    gvb.d("Formalização de " + paramigg.d() + " concluída com sucesso.");
    gvb.g("Comprovante - " + gvb.j());
    return gvb;
  }
  
  private gvb a(igg paramigg) {
    gvb gvb = new gvb();
    gvb.i("formdigiFormProposta.Err.End");
    gvb.j("formdigiFormPropostaShare");
    gvb.b(new ArrayList<gky>());
    for (gkx gkx : paramigg.e())
      gvb.h().addAll(gkx.c()); 
    gvb.c("Formalização");
    gvb.e(true);
    gvb.d(false);
    gvb.s(true);
    gvb.d("Formalização de " + paramigg.d() + " não realizada.");
    gvb.g("Comprovante - " + gvb.j());
    return gvb;
  }
  
  private JSONObject a() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", miq.C().q());
      if (miq.C().f().y().b() != null) {
        jSONObject.put("challengeValue", nab.a().b(miq.C().f().y().b().g()));
        return jSONObject;
      } 
      if (miq.C().f().y().c() != null) {
        jSONObject.put("otp", nab.a().b(miq.C().f().y().c().c()));
        return jSONObject;
      } 
    } catch (Exception exception) {
      Log.e("ERROR_JSON_OBJECT", exception.getMessage());
    } 
    return jSONObject;
  }
  
  private JSONObject b(int paramInt) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("proposalId", paramInt);
      return jSONObject;
    } catch (Exception exception) {
      Log.e("ERROR_JSON_OBJECT", exception.getMessage());
      return jSONObject;
    } 
  }
  
  public void a(int paramInt) {
    this.f = mxn.b(this.d);
    this.e.a(new igv(this), b(paramInt));
  }
  
  public void a(igl paramigl, igg paramigg) {
    this.e.a(new igw(this, paramigg), b(paramigl.a()), a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\igu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */