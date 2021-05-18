import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.santander.app.meuperfil.activity.MeuPerfilAtivarCartaoActivity;

class iss implements View.OnClickListener {
  iss(ism paramism, mwx parammwx, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.c.getActivity(), MeuPerfilAtivarCartaoActivity.class);
    Bundle bundle = new Bundle();
    bundle.putString("xxx", this.a.f());
    intent.putExtras(bundle);
    this.c.startActivity(intent);
    this.b.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iss.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */