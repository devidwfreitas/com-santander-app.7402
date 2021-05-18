import android.content.Context;
import android.view.View;

class mu implements View.OnClickListener {
  mu(mr parammr) {}
  
  public void onClick(View paramView) {
    if (mr.b(this.a)) {
      ace ace = mr.c(this.a).w().get(0);
      zy.b(this.a.e().getString(lg.tag_name_resgatar_acao, new Object[] { ace.u(), ace.f().j(), ace.f().k() }), this.a.e().getString(lg.tag_valor_finalizar));
    } else if (mr.c(this.a).A()) {
      zy.b(this.a.e().getString(lg.tag_name_recomendacao_acao), this.a.e().getString(lg.tag_valor_finalizar));
    } else {
      ace ace = mr.c(this.a).l().get(0);
      zy.b(this.a.e().getString(lg.tag_name_resgatar_acao, new Object[] { ace.u(), ace.f().j(), ace.f().k() }), this.a.e().getString(lg.tag_valor_finalizar));
    } 
    if (!mr.b(this.a) && mr.d(this.a) != null)
      mr.c(this.a).f(mr.d(this.a).a()); 
    zs.a().l((Context)this.a.e(), mr.c(this.a));
    this.a.e().finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */