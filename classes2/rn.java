import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class rn implements View.OnClickListener {
  rn(re paramre, RecyclerView.ViewHolder paramViewHolder, acg paramacg) {}
  
  public void onClick(View paramView) {
    TextView textView = (TextView)paramView.findViewById(la.card_det_sub_ver_detalhe);
    if (rp.q((rp)this.a).getText().toString().equals("Ocultar detalhes")) {
      textView.setText(lg.card_det_sub_ver_detalhe);
      rp.r((rp)this.a).setVisibility(8);
      rp.s((rp)this.a).setVisibility(8);
      rp.t((rp)this.a).setVisibility(8);
      rp.u((rp)this.a).setVisibility(0);
      rp.v((rp)this.a).setVisibility(8);
      rp.w((rp)this.a).setVisibility(8);
      return;
    } 
    textView.setText(lg.card_det_sub_ocultar_detalhe);
    if (re.f(this.c))
      rp.r((rp)this.a).setVisibility(0); 
    if (re.g(this.c))
      rp.s((rp)this.a).setVisibility(0); 
    if (re.h(this.c))
      rp.t((rp)this.a).setVisibility(0); 
    rp.v((rp)this.a).setVisibility(0);
    rp.u((rp)this.a).setVisibility(8);
    if (this.b.p().equalsIgnoreCase("coe") && !rp.x((rp)this.a).getText().toString().isEmpty()) {
      rp.w((rp)this.a).setVisibility(0);
      return;
    } 
    rp.w((rp)this.a).setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */