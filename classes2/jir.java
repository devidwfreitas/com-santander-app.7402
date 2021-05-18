import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

public class jir implements jiq {
  private jgw a;
  
  private Activity b;
  
  public jir(jgw paramjgw) {
    this.a = paramjgw;
    this.b = (Activity)paramjgw;
  }
  
  public void a(jdx paramjdx) {
    String str2;
    String str1;
    ArrayList<jef> arrayList = new ArrayList();
    paramjdx.H().a(naj.K(paramjdx.N()));
    arrayList.add(paramjdx.H());
    jeg jeg = paramjdx.I();
    if (paramjdx.T().equalsIgnoreCase("N")) {
      str2 = this.b.getResources().getString(2131297959);
    } else {
      str2 = naj.G(paramjdx.T());
    } 
    jeg.a(str2);
    arrayList.add(paramjdx.I());
    jeh jeh = paramjdx.J();
    if (paramjdx.U().equalsIgnoreCase("N")) {
      str2 = this.b.getResources().getString(2131297959);
    } else {
      str2 = "Sim";
    } 
    jeh.a(str2);
    arrayList.add(paramjdx.J());
    paramjdx.K().a(naj.K(paramjdx.R()));
    arrayList.add(paramjdx.K());
    jdz jdz2 = new jdz();
    jdz2.a(paramjdx.h());
    jdz2.c(this.b.getResources().getString(2131297997));
    arrayList.add(jdz2);
    jdz jdz3 = new jdz();
    if (paramjdx.v().equalsIgnoreCase("NAO DISPONIVEL")) {
      str1 = this.b.getResources().getString(2131297959);
    } else {
      str1 = naj.f(paramjdx.v());
    } 
    jdz3.a(str1);
    jdz3.c(this.b.getResources().getString(2131297844));
    arrayList.add(jdz3);
    jdz3 = new jdz();
    if (paramjdx.u().equalsIgnoreCase("NAO DISPONIVEL")) {
      str1 = this.b.getResources().getString(2131297959);
    } else {
      str1 = naj.f(paramjdx.u());
    } 
    jdz3.a(str1);
    jdz3.c(this.b.getResources().getString(2131297843));
    arrayList.add(jdz3);
    jdz jdz1 = new jdz();
    jdz1.a(naj.f(paramjdx.S()));
    jdz1.c(this.b.getResources().getString(2131297845));
    arrayList.add(jdz1);
    jdz1 = new jdz();
    jdz1.a(naj.L(paramjdx.C()));
    jdz1.c(this.b.getResources().getString(2131297931));
    arrayList.add(jdz1);
    paramjdx.E().a(paramjdx.z());
    arrayList.add(paramjdx.E());
    paramjdx.D().a(paramjdx.ac());
    arrayList.add(paramjdx.D());
    paramjdx.F().a(paramjdx.aa());
    arrayList.add(paramjdx.F());
    paramjdx.G().a(paramjdx.ab());
    arrayList.add(paramjdx.G());
    jdz1 = new jdz();
    jdz1.a(paramjdx.B());
    jdz1.c(this.b.getResources().getString(2131297934));
    arrayList.add(jdz1);
    jdz1 = new jdz();
    jdz1.a(paramjdx.A());
    jdz1.c(this.b.getResources().getString(2131297948));
    arrayList.add(jdz1);
    this.a.a((List)arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jir.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */