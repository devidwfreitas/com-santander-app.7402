import android.app.Dialog;
import android.view.View;

class pj implements View.OnClickListener {
  pj(pc parampc, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    if (pc.a(this.b, pc.K(this.b).getText().toString(), pc.L(this.b), pc.M(this.b))) {
      pc.a(this.b, new View[] { this.a.findViewById(la.dialog_pzr_txt_validacao_valor), this.a.findViewById(la.dialog_pzr_linha_valor) });
      if (pc.N(this.b).b()) {
        pc.O(this.b).b(Integer.valueOf(pc.K(this.b).getText().toString()));
      } else {
        pc.P(this.b).a(Integer.valueOf(pc.K(this.b).getText().toString()));
      } 
      String str = pc.K(this.b).getText() + " dias";
      pc.G(this.b).setText(str);
      this.a.dismiss();
      return;
    } 
    pc.b(this.b, new View[] { this.a.findViewById(la.dialog_pzr_txt_validacao_valor), this.a.findViewById(la.dialog_pzr_linha_valor) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */