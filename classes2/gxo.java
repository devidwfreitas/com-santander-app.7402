import com.santander.app.cambio.transferenciaexterior.presentation.DadosOperacaoActivity;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;

class gxo implements gkw {
  gxo(gxj paramgxj, gta paramgta) {}
  
  public void a(Object paramObject) {
    if (((gwy)paramObject).getConfirmacao().equals("OK")) {
      paramObject = gws.valueOf(this.a.b());
      switch (gxr.b[paramObject.ordinal()]) {
        default:
          return;
        case 1:
          gxj.a(this.b, this.a, 10);
          return;
        case 2:
          gxj.a(this.b, this.a, 9);
          return;
        case 3:
          gxj.a(this.b, this.a, 8);
          return;
        case 4:
          gxj.a(this.b, this.a, 7);
          return;
        case 5:
          if (this.b.a.a.f().s().d().size() > 0) {
            gxg.h(this.b.a).a(ParcelamentoFaturaActivity.class);
            this.b.a.a.f().w().b(Boolean.valueOf(true));
            return;
          } 
          mxn.b(gxg.i(this.b.a), gxg.i(this.b.a).getString(2131297078));
          return;
        case 6:
          jcw.c(gxg.i(this.b.a), "POUPANCA");
          return;
        case 7:
          jcw.c(gxg.i(this.b.a), "POUPANCA");
          return;
        case 8:
          jcw.c(gxg.i(this.b.a), "CDB_RECOMPENSA");
          return;
        case 9:
          jcw.c(gxg.i(this.b.a), "CDB_FUNCIONARIO");
          return;
        case 10:
          jcw.c(gxg.i(this.b.a), "PREVIDENCIA");
          return;
        case 11:
          gxg.h(this.b.a).a(DadosOperacaoActivity.class);
          this.b.a.a.f().w().b(Boolean.valueOf(true));
          return;
        case 12:
          jcw.c(gxg.i(this.b.a), "CDB_VG_DIGITAL");
          return;
        case 13:
          break;
      } 
      jcw.c(gxg.i(this.b.a), "FUNDOS");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gxo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */