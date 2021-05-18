import android.widget.CompoundButton;

class uu implements CompoundButton.OnCheckedChangeListener {
  uu(uo paramuo) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean)
      zy.b(this.a.e().getString(lg.tag_name_recomendacao_radio_button_acao), this.a.e().getString(lg.tag_valor_recomendacao_nao_sei)); 
    uo.a(this.a, paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\uu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */