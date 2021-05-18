import android.view.View;

class jhy implements View.OnClickListener {
  jhy(jhw paramjhw) {}
  
  public void onClick(View paramView) {
    jdx jdx = (jdx)paramView.getTag();
    if (jdx.t().equals(jdk.APLICAR) || jdx.t().equals(jdk.REAPLICAR)) {
      frq.d("Investimentos_Fundos_Acao", "Aplicar");
    } else {
      frq.d("Investimentos_Fundos_Acao", "Resgatar");
    } 
    jhw.a(this.a).b(jdx);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jhy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */