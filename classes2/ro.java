import android.support.v7.widget.RecyclerView;
import android.view.View;

class ro implements View.OnClickListener {
  ro(re paramre, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onClick(View paramView) {
    if (rp.q((rp)this.a).getText().toString().equals("Ocultar detalhes")) {
      rp.q((rp)this.a).setText(lg.card_det_sub_ver_detalhe);
      rp.r((rp)this.a).setVisibility(8);
      rp.s((rp)this.a).setVisibility(8);
      rp.t((rp)this.a).setVisibility(8);
      rp.u((rp)this.a).setVisibility(0);
      rp.v((rp)this.a).setVisibility(8);
      return;
    } 
    rp.q((rp)this.a).setText(lg.card_det_sub_ocultar_detalhe);
    if (re.f(this.b))
      rp.r((rp)this.a).setVisibility(0); 
    if (re.g(this.b))
      rp.s((rp)this.a).setVisibility(0); 
    if (re.h(this.b))
      rp.t((rp)this.a).setVisibility(0); 
    rp.v((rp)this.a).setVisibility(0);
    rp.u((rp)this.a).setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ro.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */