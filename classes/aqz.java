import android.content.Context;
import android.content.Intent;
import android.util.Log;
import chat.santander.com.modulochatsantander.view.activities.ChatActivity;

public class aqz {
  private static final String a = "[ChatSession]";
  
  public void a() {
    Log.d("[ChatSession]", "##################### INIT START SESSION");
    Log.i("[ChatSession]", "Chat Version: 2.1.8");
    ard ard = ard.a();
    Context context = ard.x();
    if (ard.Q() != null)
      ard.Q().a(); 
    if (ard.q() != null) {
      switch (ara.a[ard.q().ordinal()]) {
        default:
          return;
        case 1:
        case 2:
          Log.d("[ChatSession]", "chat indisponivel:" + ard.l());
          ase.a(context, "Você pode tentar depois?", ard.l(), "Fechar");
          return;
        case 3:
          if (ard.j() == null && !ard.u())
            ard.b(); 
          context.startActivity(new Intent(context, ChatActivity.class));
          return;
        case 4:
          break;
      } 
      ase.a(context, "Chat Santander", "Chat indisponível no momento.", "Cancelar");
      return;
    } 
    if (ard.k() != 0) {
      Log.d("[ChatSession]", ard.l());
      ase.a(context, "Você pode tentar depois?", "Desculpe, estamos resolvendo uma questão técnica e você já vai conseguir usar o chat.", "Fechar");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */