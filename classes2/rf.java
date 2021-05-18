import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class rf implements View.OnClickListener {
  rf(re paramre, acg paramacg, RecyclerView.ViewHolder paramViewHolder) {}
  
  public void onClick(View paramView) {
    this.a.a(re.a(this.c).get(this.b.getAdapterPosition()));
    this.a.b(this.a.p().toUpperCase().contains("FUNDOS"));
    zy.b(re.e(this.c).getString(lg.tag_name_detalhamento_acao_aplicar_resgatar, new Object[] { re.b(this.c), re.c(this.c), re.d(this.c) }), re.e(this.c).getString(lg.tag_valor_detalhamento_aplicar));
    zy.a(re.e(this.c).getString(lg.tag_transaction_name_aplicar), re.e(this.c).getString(lg.tag_service_name_investimento));
    zs.a().b((Context)re.e(this.c), this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\rf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */