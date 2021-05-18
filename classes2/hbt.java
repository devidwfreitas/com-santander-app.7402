import android.content.Context;
import android.content.Intent;
import com.santander.app.emprestimo.ServicoIndisponivelActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

abstract class hbt {
  protected hbv a;
  
  hbt(hbv paramhbv) {
    this.a = paramhbv;
  }
  
  void a(Context paramContext) {
    hbu hbu = new hbu(new Intent(paramContext, ServicoIndisponivelActivity.class));
    this.a.a(paramContext, hbu);
  }
  
  public abstract void a(Context paramContext, hbp paramhbp);
  
  boolean a() {
    return mzr.a();
  }
  
  void b(Context paramContext) {
    Intent intent = new Intent(paramContext, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.USUARIO_CONSULTIVO);
    hbu hbu = new hbu(intent);
    this.a.a(paramContext, hbu);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hbt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */