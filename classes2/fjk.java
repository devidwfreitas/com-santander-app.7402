import android.view.MotionEvent;
import android.view.View;
import com.santander.app.PagamentoFacturaCartoesActivity;

public class fjk implements View.OnTouchListener {
  public fjk(PagamentoFacturaCartoesActivity paramPagamentoFacturaCartoesActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent) {
    if (paramMotionEvent.getAction() == 2) {
      if (paramMotionEvent.getRawX() > paramMotionEvent.getY() + 1.0F || paramMotionEvent.getRawX() < paramMotionEvent.getY() - 1.0F) {
        paramView.getParent().requestDisallowInterceptTouchEvent(true);
        if (PagamentoFacturaCartoesActivity.h(this.a)) {
          if (PagamentoFacturaCartoesActivity.i(this.a) == PagamentoFacturaCartoesActivity.j(this.a).getAdapter().getCount() * PagamentoFacturaCartoesActivity.j(this.a).getAdapter().getCount()) {
            frq.d("Cartoes_PagamentoDaFatura_SelecionarCartaoComFinal_Acao", "SelecionarCartoes");
            PagamentoFacturaCartoesActivity.a(this.a, 0);
            return false;
          } 
        } else {
          return false;
        } 
        PagamentoFacturaCartoesActivity.k(this.a);
        return false;
      } 
      paramView.getParent().requestDisallowInterceptTouchEvent(false);
      return false;
    } 
    paramView.getParent().requestDisallowInterceptTouchEvent(false);
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */