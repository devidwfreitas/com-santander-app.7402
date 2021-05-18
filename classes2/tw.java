import android.support.v7.widget.RecyclerView;
import android.view.View;

class tw implements View.OnClickListener {
  tw(tu paramtu, RecyclerView.ViewHolder paramViewHolder, int paramInt) {}
  
  public void onClick(View paramView) {
    if (((tz)this.a).i.getText().toString().equals(((tz)this.a).i.getResources().getString(lg.app_ver_produtos))) {
      zy.b(this.c.b.getString(lg.tag_name_posicao_consolidada_acao_familia, new Object[] { ((sy)this.c.a.get(this.b)).b() }), this.c.b.getString(lg.tag_valor_posicao_consolidada_acao_familia_exibir));
      ((tz)this.a).i.setText(lg.app_ocultar_produtos);
      ((tz)this.a).j.setVisibility(0);
      ((tz)this.a).h.setVisibility(0);
      ((tz)this.a).g.setVisibility(8);
      return;
    } 
    zy.b(this.c.b.getString(lg.tag_name_posicao_consolidada_acao_familia, new Object[] { ((sy)this.c.a.get(this.b)).b() }), this.c.b.getString(lg.tag_valor_posicao_consolidada_acao_familia_ocultar));
    ((tz)this.a).i.setText(lg.app_ver_produtos);
    ((tz)this.a).j.setVisibility(8);
    ((tz)this.a).g.setVisibility(0);
    ((tz)this.a).h.setVisibility(8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */