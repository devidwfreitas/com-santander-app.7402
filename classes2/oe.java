import android.view.View;

class oe implements View.OnClickListener {
  oe(od paramod) {}
  
  public void onClick(View paramView) {
    if (od.a(this.a).A()) {
      zy.b(this.a.e().getString(lg.tag_name_comprovante_recomendacao_acao), this.a.e().getString(lg.tag_valor_comprovante_fechar));
    } else {
      Integer integer;
      if (od.b(this.a)) {
        integer = Integer.valueOf(lg.tag_name_comprovante_resgate_acao);
      } else {
        integer = Integer.valueOf(lg.tag_name_aplicar_comprovante_acao);
      } 
      ace ace = od.a(this.a).u().get(0);
      zy.b(this.a.e().getString(integer.intValue(), new Object[] { ace.u(), ace.f().j(), ace.f().k() }), this.a.e().getString(lg.tag_valor_comprovante_fechar));
    } 
    this.a.e().onBackPressed();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\oe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */