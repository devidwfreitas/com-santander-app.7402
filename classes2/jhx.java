import android.util.Log;
import android.view.View;

class jhx implements View.OnClickListener {
  jhx(jhw paramjhw, jic paramjic, int paramInt1, int paramInt2) {}
  
  public void onClick(View paramView) {
    frq.d("Investimentos_Fundos_Aplicar_Acao", "AplicarFundo");
    frq.d("Investimentos_Fundos_Aplicar", jic.a(this.a).getText().toString());
    jhw.a(this.d).a((jdx)this.d.getChild(this.b, this.c));
    Log.v("onChildClick", "group: " + this.b + "child: " + this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */