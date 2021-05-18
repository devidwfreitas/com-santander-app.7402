import android.content.Intent;
import android.view.View;
import com.santander.app.transferencia.presentation.ListagemFavorecidosActivity;
import java.io.Serializable;

public class mon implements View.OnClickListener {
  public mon(ListagemFavorecidosActivity paramListagemFavorecidosActivity) {}
  
  public void onClick(View paramView) {
    mld mld = (mld)paramView.getTag();
    ListagemFavorecidosActivity.c(this.a).a(mld);
    Intent intent = new Intent();
    intent.putExtra("result", (Serializable)mld);
    this.a.setResult(-1, intent);
    this.a.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mon.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */