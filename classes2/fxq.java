import android.content.Context;
import android.widget.ListAdapter;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

public class fxq implements fzi {
  public fxq(QuizStartActivity paramQuizStartActivity) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    if (paramObject != null) {
      if (!paramObject.b().equals("0")) {
        if (paramObject.b().equals("@ERSNE2015")) {
          mxn.a(QuizStartActivity.d(this.a), 2130968942, true);
          return;
        } 
        mxn.e(QuizStartActivity.d(this.a), "Sistema indisponível. Por favor, entre em contato com a Central de Atendimento Santander.");
        return;
      } 
      QuizStartActivity.a(this.a, new fxv(new fxr(this, (fyf)paramObject), (Context)QuizStartActivity.d(this.a), 2130969363, paramObject.a()));
      QuizStartActivity.m(paramObject.c().toString());
      QuizStartActivity.i(this.a).setAdapter((ListAdapter)QuizStartActivity.g(this.a));
      QuizStartActivity.h(this.a);
      return;
    } 
    QuizStartActivity.a(this.a, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */