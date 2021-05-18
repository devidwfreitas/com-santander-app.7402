import android.content.Context;
import android.support.v7.app.AlertDialog;
import java.util.ArrayList;

class xs implements tj {
  xs(xq paramxq) {}
  
  public void a(abv paramabv) {
    tm tm = (tm)paramabv;
    if (tm != null && tm.b() != null && !tm.b().isEmpty()) {
      xq.a(this.a, new acg());
      xq.b(this.a).f(tm.d());
      ArrayList arrayList = new ArrayList();
      for (int i = 0; i < tm.b().size(); i++) {
        if (((sy)tm.b().get(i)).b().equalsIgnoreCase("FUNDOS") || ((sy)tm.b().get(i)).b().equalsIgnoreCase("POUPANÇA") || ((sy)tm.b().get(i)).b().equalsIgnoreCase("CDB"))
          arrayList.add(tm.b().get(i)); 
      } 
      tm.a(arrayList);
      xq.a(this.a, tm);
      xq.c(this.a).setVisibility(8);
      xq.d(this.a).setVisibility(0);
    } 
  }
  
  public void a(aby paramaby) {
    xq.c(this.a).setVisibility(8);
    (new AlertDialog.Builder((Context)this.a.e())).setTitle(lg.app_erro).setMessage(lg.app_erro_mensagem).setPositiveButton(lg.app_tentar_novamente, new xu(this)).setNegativeButton(lg.app_cancelar, new xt(this)).create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\xs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */