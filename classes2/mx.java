import android.content.Context;
import android.graphics.Color;
import android.support.v7.app.AlertDialog;
import java.util.ArrayList;
import java.util.List;

class mx implements lt {
  mx(mr parammr) {}
  
  public void a(abv paramabv) {
    int i = 0;
    this.a.a = (lk)paramabv;
    if (this.a.a.i() != null && !this.a.a.i().isEmpty())
      (new AlertDialog.Builder((Context)this.a.e())).setTitle(lg.app_erro).setMessage(((acb)this.a.a.i().get(0)).b()).setPositiveButton(lg.app_tentar_novamente, new mz(this)).setNegativeButton(lg.app_cancelar, new my(this)).create().show(); 
    ArrayList<ace> arrayList = new ArrayList();
    for (lv lv : this.a.a.k()) {
      for (lw lw : lv.i()) {
        int j = Color.parseColor(lv.b());
        for (lm lm : lw.h()) {
          boolean bool;
          ace ace = new ace(lw, lv.a(), Integer.valueOf(j), lm, lv.c());
          ace.a(this.a.a.j());
          if (!mr.b(this.a)) {
            bool = true;
          } else {
            bool = false;
          } 
          ace.f(bool);
          ace.a(lv.c());
          ace.a((to)lw);
          arrayList.add(ace);
        } 
      } 
    } 
    if (!mr.b(this.a)) {
      mr.c(this.a).b(arrayList);
    } else {
      mr.c(this.a).c(arrayList.get(0));
    } 
    mr.f(this.a);
    List<acb> list = this.a.a.h();
    mr.c(this.a).e(list);
    String str = "";
    while (i < list.size()) {
      if (((acb)list.get(i)).e().equals("header"))
        mr.g(this.a).setText(((acb)list.get(i)).b()); 
      if (((acb)list.get(i)).e().equals("disclaimer"))
        if (str.equals("")) {
          str = ((acb)list.get(i)).b();
        } else {
          str = str + System.getProperty("line.separator") + System.getProperty("line.separator") + ((acb)list.get(i)).b();
        }  
      i++;
    } 
    mr.h(this.a).setText(str);
  }
  
  public void a(aby paramaby) {
    (new AlertDialog.Builder((Context)this.a.e())).setTitle(lg.app_erro).setMessage(lg.app_erro_mensagem).setPositiveButton(lg.app_tentar_novamente, new nb(this)).setNegativeButton(lg.app_cancelar, new na(this)).create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */