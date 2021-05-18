import android.content.Context;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.ListAdapter;
import com.santander.app.habilitacaointernacional.activity.ConsultarAlterarHabilitacaoInternacionalActivity;
import java.util.ArrayList;

public class imu extends AsyncTask<Void, Void, ioh> {
  public imu(ConsultarAlterarHabilitacaoInternacionalActivity paramConsultarAlterarHabilitacaoInternacionalActivity) {}
  
  protected ioh a(Void... paramVarArgs) {
    try {
      String str = ((ghu)this.a.v.f().s().e().get(ConsultarAlterarHabilitacaoInternacionalActivity.e(this.a))).H();
      return hat.t().a(str);
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ioh paramioh) {
    ArrayList<ioi> arrayList;
    if (this.a.b != null && this.a.b.isShowing()) {
      this.a.b.cancel();
      this.a.b = null;
    } 
    Log.d("Santander:", "GetConsultaViagensTask response: " + paramioh.d());
    imv imv = new imv(this);
    if (paramioh != null) {
      if (paramioh.a().size() > 0) {
        new ioh();
        this.a.v.f().i(paramioh.e());
        arrayList = ConsultarAlterarHabilitacaoInternacionalActivity.b(this.a, paramioh.a());
        this.a.a = new inp(arrayList, (Context)ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), (AppCompatActivity)ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), imv);
        ConsultarAlterarHabilitacaoInternacionalActivity.f(this.a).setAdapter((ListAdapter)this.a.a);
        ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a, arrayList);
        this.a.a();
        ConsultarAlterarHabilitacaoInternacionalActivity.g(this.a).setVisibility(0);
        return;
      } 
      if (arrayList.b().equals("0") && arrayList.a().size() == 0) {
        ConsultarAlterarHabilitacaoInternacionalActivity.a(this.a, 1);
        arrayList = ConsultarAlterarHabilitacaoInternacionalActivity.b(this.a, arrayList.a());
        this.a.a = new inp(arrayList, (Context)ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), (AppCompatActivity)ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), imv);
        ConsultarAlterarHabilitacaoInternacionalActivity.f(this.a).setAdapter((ListAdapter)this.a.a);
        ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a, arrayList);
        ConsultarAlterarHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
        return;
      } 
      hat.d().a(ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), (fvu)arrayList, true, false);
      ConsultarAlterarHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
      return;
    } 
    hat.d().a(ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a), (fvu)arrayList, true, false);
    ConsultarAlterarHabilitacaoInternacionalActivity.g(this.a).setVisibility(8);
  }
  
  public void onPreExecute() {
    this.a.b = mxn.b(ConsultarAlterarHabilitacaoInternacionalActivity.c(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\imu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */