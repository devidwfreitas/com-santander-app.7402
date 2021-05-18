import android.content.Context;
import android.util.Log;
import android.view.View;
import java.io.IOException;

class of implements View.OnClickListener {
  of(od paramod) {}
  
  public void onClick(View paramView) {
    if (od.a(this.a).A()) {
      zy.b(this.a.e().getString(lg.tag_name_comprovante_recomendacao_acao), this.a.e().getString(lg.tag_valor_comprovante_compartilhar));
    } else {
      Integer integer;
      if (od.b(this.a)) {
        integer = Integer.valueOf(lg.tag_name_comprovante_resgate_acao);
      } else {
        integer = Integer.valueOf(lg.tag_name_aplicar_comprovante_acao);
      } 
      ace ace = od.a(this.a).u().get(0);
      zy.b(this.a.e().getString(integer.intValue(), new Object[] { ace.u(), ace.f().j(), ace.f().k() }), this.a.e().getString(lg.tag_valor_comprovante_compartilhar));
    } 
    od.c(this.a).setVisibility(8);
    od.d(this.a).setVisibility(8);
    try {
      aau.a((Context)this.a.e(), od.e(this.a));
    } catch (IOException iOException) {
      Log.e(getClass().getSimpleName(), iOException.toString());
    } 
    od.c(this.a).setVisibility(0);
    od.d(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\of.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */