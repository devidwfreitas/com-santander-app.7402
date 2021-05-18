import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.List;

public class mqb implements mng, mqa {
  private mpe a;
  
  private Activity b;
  
  private mnf c;
  
  public mqb(mpe parammpe) {
    this.a = parammpe;
    this.b = (Activity)parammpe;
    this.c = new mnh(this.b, this);
    this.c.a();
  }
  
  public void a(Conta paramConta) {
    this.c.a(paramConta);
  }
  
  public void a(List<Conta> paramList) {
    ArrayList<anb> arrayList = new ArrayList();
    arrayList.addAll(gmy.a(paramList));
    this.a.a(arrayList);
  }
  
  public void a(mlk parammlk) {
    this.a.a(parammlk);
  }
  
  public void a(mlo parammlo) {
    if (parammlo.b() == null && parammlo.c() == null) {
      this.a.a("Por favor, informe um favorecido.");
      return;
    } 
    if (parammlo.d().isEmpty() || Integer.valueOf(naj.l(parammlo.d())).intValue() <= 0) {
      this.a.a("Por favor, informe um valor para transfêrencia");
      return;
    } 
    this.a.b();
  }
  
  public void b(mlk parammlk) {
    this.a.a(parammlk);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */