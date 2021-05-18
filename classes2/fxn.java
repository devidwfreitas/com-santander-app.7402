import android.content.Context;
import android.content.Intent;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import com.santander.app.meuperfil.activity.SenhaAcessoActivity;

class fxn implements fzi {
  fxn(fxl paramfxl) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (paramObject.a().equals("104") || paramObject.a().equals("105")) {
        Intent intent = new Intent((Context)QuizStartActivity.d(this.a.a), SenhaAcessoActivity.class);
        intent.putExtra("nome", QuizStartActivity.e(this.a.a));
        intent.putExtra("cpf", QuizStartActivity.f(this.a.a));
        intent.putExtra("cadastro", QuizStartActivity.c(this.a.a));
        intent.putExtra("codRetorno", paramObject.a());
        QuizStartActivity.d(this.a.a).startActivity(intent);
        return;
      } 
      if (paramObject.a().equals("100")) {
        QuizStartActivity.a(this.a.a, 2);
        return;
      } 
      if (paramObject.a().equals("200")) {
        QuizStartActivity.a(this.a.a, 3);
        return;
      } 
      QuizStartActivity.a(this.a.a, 1);
      return;
    } 
    QuizStartActivity.a(this.a.a, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */