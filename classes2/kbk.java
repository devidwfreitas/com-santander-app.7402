import android.app.Dialog;
import android.content.Intent;
import android.view.View;
import android.widget.SeekBar;
import com.santander.app.perfil.activity.GerenciarDispositivosConfirmacaoActivity;
import java.io.Serializable;

class kbk implements View.OnClickListener {
  kbk(kbi paramkbi, SeekBar paramSeekBar, int paramInt1, Dialog paramDialog, kbq paramkbq, int paramInt2) {}
  
  public void onClick(View paramView) {
    this.a.setProgress(this.b);
    this.f.b(this.b);
    this.c.dismiss();
    Intent intent = new Intent(kbi.b(this.f), GerenciarDispositivosConfirmacaoActivity.class);
    intent.putExtra("gerenciar_dispositivos", (Serializable)this.d);
    intent.putExtra("inf_method", kbi.c(this.f));
    intent.putExtra("posicao_slider", this.e);
    kbi.b(this.f).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kbk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */