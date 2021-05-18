import android.content.Intent;
import android.view.View;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;

public class fib implements View.OnClickListener {
  public fib(HomeLogadaNaoCorrentistaActivity paramHomeLogadaNaoCorrentistaActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.SEND");
    intent.setType("text/plain");
    intent.putExtra("android.intent.extra.SUBJECT", "App Santander no Celular");
    intent.putExtra("android.intent.extra.TEXT", "Olá, eu estou usando o app do Santander. Use você também! Acesse https://www.santander.com.br/br/acessomobile e baixe agora.");
    this.a.startActivityForResult(Intent.createChooser(intent, "Compartilhar com"), 999);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */