import android.app.Dialog;
import android.content.Context;
import android.support.v7.app.AlertDialog;
import android.view.View;
import android.widget.Button;

public class aad {
  public static AlertDialog a(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2, aar paramaar) {
    AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(paramString1).setMessage(paramString2).setPositiveButton(paramInt1, new aag(paramaar)).setNegativeButton(paramInt2, new aaf(paramaar)).setOnCancelListener(new aaq(paramaar)).create();
    alertDialog.show();
    return alertDialog;
  }
  
  public static AlertDialog a(Context paramContext, String paramString1, String paramString2, aas paramaas) {
    AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(paramString1).setMessage(paramString2).setPositiveButton(lg.app_ok, new aao(paramaas)).create();
    alertDialog.show();
    return alertDialog;
  }
  
  public static void a(Context paramContext) {
    Dialog dialog = new Dialog(paramContext);
    dialog.setContentView(lc.layout_dialog_central_atendimento);
    Button button = (Button)dialog.findViewById(la.central_dialog_cancel);
    View view = dialog.findViewById(la.central_dialog_ligue_agora);
    dialog.findViewById(la.central_dialog_chat).setOnClickListener(new aae(paramContext));
    view.setOnClickListener(new aaj(paramContext));
    button.setOnClickListener(new aak(dialog));
    dialog.setCancelable(true);
    dialog.show();
  }
  
  public static void a(Context paramContext, aar paramaar) {
    (new AlertDialog.Builder(paramContext)).setTitle(lg.app_erro).setMessage(lg.app_erro_mensagem).setPositiveButton(lg.app_tentar_novamente, new aan(paramaar)).setNegativeButton(lg.app_cancelar, new aam(paramaar)).setOnCancelListener(new aal(paramaar)).create().show();
  }
  
  public static void a(Context paramContext, aas paramaas) {
    (new AlertDialog.Builder(paramContext)).setTitle(lg.car_card_tit_dialog_abandonar).setMessage(lg.car_card_msg_dialog_remover).setPositiveButton(lg.app_sim, new aai(paramaas)).setNegativeButton(lg.app_cancelar, new aah()).create().show();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, aar paramaar) {
    a(paramContext, paramString1, paramString2, lg.app_sim, lg.app_nao, paramaar);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, aas paramaas) {
    (new AlertDialog.Builder(paramContext)).setTitle(paramString1).setMessage(paramString2).setPositiveButton(paramString3, new aap(paramaas)).create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */