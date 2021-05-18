import android.content.Context;

public class yz extends abw {
  public void a(Context paramContext, Boolean paramBoolean, zb paramzb) {
    StringBuilder stringBuilder = new StringBuilder();
    if (paramBoolean.booleanValue()) {
      stringBuilder.append(abq.VALIDACAO_CONSULTIVA_RESGATE.getEndpoint());
    } else {
      stringBuilder.append(abq.VALIDACAO_CONSULTIVA_APLICACAO.getEndpoint());
    } 
    stringBuilder.append("?gw-app-key=").append(abp.b().a().a().c());
    try {
      abp.b().a().a(a(stringBuilder.toString(), null), new za(this, paramzb, paramContext));
      return;
    } catch (Exception exception) {
      paramzb.a(new aby(-1, exception.getMessage()));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\yz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */