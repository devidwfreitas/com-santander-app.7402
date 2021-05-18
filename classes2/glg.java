import android.view.View;

class glg implements View.OnClickListener {
  glg(glf paramglf) {}
  
  public void onClick(View paramView) {
    if (gld.c(this.a.c)) {
      frq.d("Outros_ExibirEOcultar_Cartoes_Acao", "Exibir");
    } else {
      frq.d("Outros_ExibirEOcultar_Cartoes_Acao", "Ocultar");
    } 
    if (gld.d(this.a.c) == null) {
      if (gld.c(this.a.c)) {
        gld.a(this.a.c, false);
      } else {
        gld.a(this.a.c, true);
      } 
      glf.a(this.a);
      return;
    } 
    paramView.setTag(Boolean.valueOf(true));
    gld.e(this.a.c).onClick(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\glg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */