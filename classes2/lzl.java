import android.view.View;

class lzl implements View.OnClickListener {
  lzl(lzi paramlzi) {}
  
  public void onClick(View paramView) {
    frq.d("Seguros_Sinistro_Acionar_Cobertura_Acao", "Assistencia24h");
    if (lzi.a(this.a).a() != null && !lzi.a(this.a).a().equals(""))
      mie.a(this.a.getResources().getString(2131298245), this.a.getResources().getString(2131298059), lzi.a(this.a).a()).show(this.a.getChildFragmentManager(), "dialog-select-kinship-tag"); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lzl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */