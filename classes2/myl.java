import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.idsantander.presentation.IdSantanderConversaoActivity;
import com.santander.app.idsantander.presentation.IdSantanderGerarQrActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoQrOuAtmOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoSMSOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderSincroniaActivity;
import com.santander.app.validation.presentation.IdSantanderEscolhaCanalTransacaoActivity;
import com.santander.app.validation.presentation.IdSantanderTokenCentralAtendimentoActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import com.santander.app.validation.presentation.LeituraQrCodeActivity;
import java.util.List;

public class myl {
  public static Dialog a(Activity paramActivity, Dialog paramDialog, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2) {
    if (paramDialog != null && paramDialog.isShowing())
      paramDialog.dismiss(); 
    return mxn.a(paramActivity, paramOnClickListener1, paramOnClickListener2, paramActivity.getResources().getString(2131299041), paramActivity.getResources().getString(2131298903), paramActivity.getResources().getString(2131296657), paramActivity.getString(2131296665));
  }
  
  public static void a(Activity paramActivity) {
    String str = miq.C().f().A();
    if (naz.ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO.getValue().equals(str)) {
      paramActivity.startActivity(new Intent((Context)paramActivity, IdSantanderHabilitacaoSMSOfertaActivity.class));
    } else if (naz.HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO.getValue().equals(str) || naz.MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO.getValue().equals(str)) {
      paramActivity.startActivity(new Intent((Context)paramActivity, IdSantanderHabilitacaoQrOuAtmOfertaActivity.class));
    } else {
      Intent intent;
      if (naz.HABILITACAO_ATM.getValue().equals(str)) {
        intent = new Intent((Context)paramActivity, IdSantanderHabilitacaoActivity.class);
        intent.putExtra("atm", true);
        paramActivity.startActivity(intent);
      } else if (naz.ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO.getValue().equals(intent)) {
        intent = new Intent((Context)paramActivity, IdSantanderUsuarioConsultivoActivity.class);
        intent.putExtra("tipo", nat.ID_CANCELADO);
        intent.setFlags(67108864);
        paramActivity.startActivity(intent);
      } else if (naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(intent) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(intent) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(intent) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(intent) || miq.C().f().y().k().booleanValue()) {
        Intent intent1 = new Intent((Context)paramActivity, IdSantanderOfertaActivity.class);
        intent1.setFlags(67108864);
        if (naz.CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO.getValue().equals(intent) || naz.CONVERSAO_ID_OBRIGATORIA_TELA_41.getValue().equals(intent)) {
          intent1.putExtra("tipoConversao", iuu.OBRIGATORIA);
        } else {
          intent1.putExtra("tipoConversao", iuu.OPCIONAL);
        } 
        paramActivity.startActivity(intent1);
      } else {
        intent = new Intent((Context)paramActivity, IdSantanderConversaoActivity.class);
        intent.setFlags(67108864);
        paramActivity.startActivity(intent);
      } 
    } 
    paramActivity.getSharedPreferences(nat.VER_MAIS_TARDE.name(), 0).edit().putBoolean(mzr.n(), false).commit();
    miq.C().f().y().g(Boolean.valueOf(false));
  }
  
  public static void b(Activity paramActivity) {
    String str = miq.C().f().y().a();
    if (naz.TRANSACIONAL_COM_ID_OU_OTIMIZACAO.getValue().equals(str)) {
      Intent intent = new Intent((Context)paramActivity, IdSantanderGerarQrActivity.class);
      intent.setFlags(67108864);
      paramActivity.startActivity(intent);
    } 
  }
  
  public static void c(Activity paramActivity) {
    Intent intent = new Intent((Context)paramActivity, IdSantanderSincroniaActivity.class);
    intent.setFlags(67108864);
    paramActivity.startActivity(intent);
  }
  
  public static void d(Activity paramActivity) {
    gyu gyu = new gyu((Context)paramActivity);
    gyu.a();
    List<gyv> list = gyu.c();
    gyu.close();
    if (list == null || list.size() <= 0) {
      paramActivity.startActivityForResult((new Intent((Context)paramActivity, IdSantanderUsuarioConsultivoActivity.class)).putExtra("tipo", nat.USUARIO_SEM_SEMENTE), 3);
      return;
    } 
    g(paramActivity);
  }
  
  public static void e(Activity paramActivity) {
    paramActivity.startActivityForResult(new Intent((Context)paramActivity, LeituraQrCodeActivity.class), 3);
  }
  
  public static void f(Activity paramActivity) {
    paramActivity.startActivityForResult(new Intent((Context)paramActivity, IdSantanderTokenCentralAtendimentoActivity.class), 4);
  }
  
  private static void g(Activity paramActivity) {
    paramActivity.startActivityForResult(new Intent((Context)paramActivity, IdSantanderEscolhaCanalTransacaoActivity.class), 5);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */