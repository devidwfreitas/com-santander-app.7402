import android.widget.CompoundButton;

class kjy implements CompoundButton.OnCheckedChangeListener {
  kjy(kjo paramkjo) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    kjo.a(this.a, paramBoolean);
    if (paramBoolean) {
      frq.d("Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoIndeterminado_Acao", "Sim");
      kjo.a(this.a).e();
      return;
    } 
    frq.d("Outros_RecargaDeTelefone_RecargaProgramada_DataPeriodoIndeterminado_Acao", "Nao");
    kjo.a(this.a).d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */