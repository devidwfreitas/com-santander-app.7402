import android.widget.TabHost;

class khq implements TabHost.OnTabChangeListener {
  khq(khp paramkhp) {}
  
  public void onTabChanged(String paramString) {
    if (paramString.equalsIgnoreCase("tab1")) {
      frq.d("Outros_RecargaDeTelefone_Recarga_Acao", "Recarga");
      khp.a(this.a, null);
      khp.a(this.a).a();
      return;
    } 
    frq.d("Outros_RecargaDeTelefone_Recarga_Acao", "RecargaProgramada");
    if (khp.b(this.a) == null) {
      khp.a(this.a).b();
      return;
    } 
    khp.a(this.a).a(khp.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\khq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */