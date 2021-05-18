import android.content.Context;
import android.content.Intent;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import com.santander.app.meuperfil.activity.ContaPreferencialActivity;

class fxm implements fzi {
  fxm(fxl paramfxl) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (paramObject.a().equals("000")) {
        QuizStartActivity.d.clear();
        QuizStartActivity.c = paramObject.e();
        paramObject = QuizStartActivity.c.iterator();
        while (paramObject.hasNext()) {
          fyl fyl = paramObject.next();
          String str1 = fyl.b();
          String str2 = fyl.a();
          QuizStartActivity.d.add(str1 + "|" + str2);
        } 
        paramObject = new Intent((Context)QuizStartActivity.d(this.a.a), ContaPreferencialActivity.class);
        paramObject.putExtra("listaContas", QuizStartActivity.d);
        paramObject.putExtra("Nome", QuizStartActivity.e(this.a.a));
        paramObject.putExtra("cpf", QuizStartActivity.f(this.a.a));
        QuizStartActivity.d(this.a.a).startActivity((Intent)paramObject);
        return;
      } 
      if (paramObject.a().equals("@SNE2024")) {
        QuizStartActivity.a(this.a.a, 2);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */