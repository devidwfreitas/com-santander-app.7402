import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class rk implements View.OnClickListener {
  rk(re paramre, acg paramacg, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onClick(View paramView) {
    this.a.a(re.a(this.c).get(this.b.getAdapterPosition()));
    zy.b(re.e(this.c).getString(lg.tag_name_detalhamento_acao_aplicar_resgatar, new Object[] { re.b(this.c), re.c(this.c), re.d(this.c) }), re.e(this.c).getString(lg.tag_valor_detalhamento_resgatar));
    zy.a(re.e(this.c).getString(lg.tag_transaction_name_resgatar), re.e(this.c).getString(lg.tag_service_name_investimento));
    zs.a().c((Context)re.e(this.c), (acg)re.e(this.c).a());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */