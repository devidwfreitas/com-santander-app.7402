import android.content.Context;

public class ns extends abw {
  private Context a;
  
  private nu b;
  
  public void a(Context paramContext, ou paramou, String paramString1, String paramString2, nu paramnu) {
    this.a = paramContext;
    this.b = paramnu;
    ir ir = new ir();
    ir.a(abq.NOTAS_NEGOCIACAO.getEndpoint() + "?gw-app-key=" + abp.b().a().a().c() + "&bankNumber=" + paramou.l() + "&agencyNumber=" + paramou.m() + "&contractNumber=" + paramString1 + "&date=" + paramString2);
    ir.a(Boolean.valueOf(true));
    ir.a(im.GET);
    nt nt = new nt(this, paramnu, paramContext);
    try {
      abp.b().a().a(ir, nt);
      return;
    } catch (Exception exception) {
      this.b.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ns.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */