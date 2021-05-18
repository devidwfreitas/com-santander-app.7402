import android.content.Context;
import android.view.View;

class mc implements View.OnClickListener {
  mc(ma paramma, mj parammj) {}
  
  public void onClick(View paramView) {
    if (ma.b(this.b).p() != null && ma.b(this.b).n() != null && ma.b(this.b).n().j() != null && ma.b(this.b).n().k() != null)
      zy.b(ma.c(this.b).getString(lg.tag_name_visualizar_termos, new Object[] { ma.b(this.b).p(), ma.b(this.b).n().j(), ma.b(this.b).n().k() }), ma.c(this.b).getString(lg.tag_valor_visualizar)); 
    if (ma.d(this.b).booleanValue()) {
      zs.a().g((Context)ma.e(this.b).e(), ma.b(this.b));
      return;
    } 
    zs.a().a((Context)ma.e(this.b).e(), this.a.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */