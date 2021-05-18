import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;

class isp implements View.OnClickListener {
  isp(ism paramism, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_Way_RedirecionamentoAppWayParaNaoCorrentistaNoLogin_PopUp_Acao", "OK");
    frq.a("Login");
    this.a.dismiss();
    if (myo.a(2131297600)) {
      myo.b((Activity)this.b.getActivity(), "HOME");
      return;
    } 
    myo.a((Context)this.b.getActivity(), this.b.getActivity().getString(2131297600));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\isp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */