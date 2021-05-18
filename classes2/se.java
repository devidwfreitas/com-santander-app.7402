import android.content.Context;
import android.view.View;

class se implements View.OnClickListener {
  se(rz paramrz) {}
  
  public void onClick(View paramView) {
    zy.b(this.a.e().getString(lg.tag_name_detalhamento_acao_aplicar_resgatar, new Object[] { rz.a(this.a).p(), rz.a(this.a).n().j(), rz.a(this.a).n().k() }), this.a.e().getString(lg.tag_valor_detalhamento_aplicar));
    zy.a(this.a.e().getString(lg.tag_transaction_name_aplicar), this.a.e().getString(lg.tag_service_name_investimento));
    if (rz.a(this.a).p().equalsIgnoreCase("coe")) {
      aad.a((Context)this.a.e());
      return;
    } 
    zs.a().b((Context)this.a.e(), rz.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\se.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */