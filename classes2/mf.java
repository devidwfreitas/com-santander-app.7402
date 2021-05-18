import android.support.v7.app.AlertDialog;
import android.view.View;

class mf implements View.OnClickListener {
  mf(ma paramma, mj parammj, int paramInt) {}
  
  public void onClick(View paramView) {
    (new AlertDialog.Builder(paramView.getContext())).setTitle(lg.car_card_tit_dialog_remover).setMessage(lg.car_card_msg_dialog_remover).setNegativeButton(lg.app_cancelar, new mh(this)).setPositiveButton(lg.app_sim, new mg(this)).create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */