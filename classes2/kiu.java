import android.widget.CompoundButton;

class kiu implements CompoundButton.OnCheckedChangeListener {
  kiu(kip paramkip) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "Sim";
    } else {
      str = "Não";
    } 
    frq.d("Outros_RecargaDeTelefone_Recarga_GuardarRecarga_Acao", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kiu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */