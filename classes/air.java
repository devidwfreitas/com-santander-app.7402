import android.content.Intent;
import android.view.View;
import br.com.santander.modulo.emprestimoslib.features.remanejamento.ajustarlimite.view.AjustarLimiteActivity;

final class air implements View.OnClickListener {
  air(aip paramaip, ajw paramajw) {}
  
  public final void onClick(View paramView) {
    Intent intent = new Intent(aip.a(this.b), AjustarLimiteActivity.class);
    intent.putExtra("contrato", this.a);
    if (!this.a.j().equals("0") && this.a.a().equals(String.valueOf(ajt.CARTAO.getCode())))
      for (ajw ajw1 : aip.b(this.b)) {
        if (ajw1.j().equals(this.a.j()))
          intent.putExtra("compartilhado", ajw1); 
      }  
    intent.setFlags(335544320);
    aip.a(this.b).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\air.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */