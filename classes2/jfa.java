import android.app.Activity;
import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class jfa implements jey {
  private miq a;
  
  private jiy b;
  
  private jez c;
  
  public jfa(jez paramjez, Activity paramActivity) {
    this.c = paramjez;
    this.a = miq.C();
    this.b = new jiz(paramActivity);
    a();
  }
  
  private ArrayList<jdx> a(String paramString, List<jdl> paramList) {
    ArrayList<jdx> arrayList = new ArrayList();
    Iterator<jdl> iterator = paramList.iterator();
    while (iterator.hasNext()) {
      for (jdx jdx : ((jdl)iterator.next()).d()) {
        if (jdx.y().equals(paramString))
          arrayList.add(jdx); 
      } 
    } 
    Collections.sort(arrayList);
    return arrayList;
  }
  
  private jek a(jek paramjek) {
    return paramjek;
  }
  
  private jdn b() {
    jdn jdn = new jdn();
    jdn.setConnUuid(this.a.i());
    jdn.setTokenSessao(this.a.j());
    jdn.setTokenTransacao(this.a.f().m());
    jdn.setAgencia(this.a.f().f());
    jdn.setConta(this.a.f().g());
    return jdn;
  }
  
  private miv b(miv parammiv) {
    parammiv.a("0033");
    parammiv.e("35");
    parammiv.setConnUuid(this.a.i());
    parammiv.setTokenSessao(this.a.j());
    parammiv.setTokenTransacao(this.a.f().m());
    return parammiv;
  }
  
  public void a() {
    List<Conta> list = new ArrayList();
    if (this.a != null)
      list = this.a.f().q().a(); 
    this.c.a(list);
  }
  
  public void a(jdx paramjdx) {
    this.b.c(new jfb(this, paramjdx), b());
  }
  
  public void a(miv parammiv) {
    this.b.a(new jfc(this), b(parammiv));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jfa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */