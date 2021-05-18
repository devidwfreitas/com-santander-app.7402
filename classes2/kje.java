import android.view.View;

class kje implements View.OnClickListener {
  kje(kjd paramkjd) {}
  
  public void onClick(View paramView) {
    frq.d("Outros_RecargaDeTelefone_Confirmacao_Acao", "Confirmar");
    switch (kjd.a(this.a)) {
      default:
        return;
      case 0:
        kjd.c(this.a).a(kjd.b(this.a));
        return;
      case 1:
        kjd.c(this.a).b(kjd.b(this.a));
        return;
      case 2:
        kjd.c(this.a).a(kjd.d(this.a));
        return;
      case 3:
        break;
    } 
    kjd.c(this.a).a(kjd.e(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kje.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */