import android.content.Context;

class hbx implements Runnable {
  hbx(hbw paramhbw, hbp paramhbp, Context paramContext) {}
  
  public void run() {
    String str = this.a.a();
    byte b = -1;
    switch (str.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            hbw.a(this.c, this.b);
            return;
          case 1:
            hbw.b(this.c, this.b);
            return;
          case 2:
            break;
        } 
        break;
      case 651793821:
        if (str.equals("cartoesConsultaFatura"))
          b = 0; 
      case 184433268:
        if (str.equals("cartoesPagamentoFatura"))
          b = 1; 
      case -1474207103:
        if (str.equals("cartoesParcelamentoFatura"))
          b = 2; 
    } 
    hbw.c(this.c, this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */