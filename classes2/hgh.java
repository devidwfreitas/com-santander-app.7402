import com.santander.app.contacorrente.domain.Conta;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class hgh implements hgc {
  private static final String a = "AcordoInteractor";
  
  private static hgh b;
  
  private hhi c = new hhj();
  
  private mip d = (mip)miq.C();
  
  private hfl e = new hfl();
  
  private void a(Conta paramConta, @hfr int paramInt) {
    if (paramInt != 1)
      paramConta = null; 
    if (paramConta != null) {
      this.e.a(hyx.a(paramConta));
      return;
    } 
    this.e.a("");
  }
  
  private void a(hfl paramhfl) {
    this.e.a(paramhfl);
  }
  
  public static hgh f() {
    hgh hgh1 = new hgh();
    b = hgh1;
    return hgh1;
  }
  
  public static hgh g() {
    if (b == null)
      throw new NullPointerException(); 
    return b;
  }
  
  public hfx a() {
    return (hfx)this.e;
  }
  
  public void a(hfk paramhfk, Conta paramConta, @hfr int paramInt, hgg paramhgg) {
    this.c.c(paramhfk, new hgl(this, "detalhar", paramConta, paramInt, paramhgg));
  }
  
  public void a(hfk paramhfk, hgd paramhgd) {
    this.c.a(paramhfk, new hgj(this, "obterOfertaInicial", paramhgd));
  }
  
  public void a(hfy paramhfy, hge paramhge) {
    hfk hfk = new hfk(paramhfy.i(), paramhfy.e());
    this.c.d(hfk, new hgm(this, "confirmar", paramhge));
  }
  
  public void a(hgf paramhgf) {
    this.e = new hfl();
    this.c.a(new hgi(this, "consultar", paramhgf));
  }
  
  public hfy b() {
    return (hfy)this.e;
  }
  
  public void b(hfk paramhfk, hgd paramhgd) {
    this.c.b(paramhfk, new hgk(this, "simular", paramhgd));
  }
  
  public List<String> c() {
    ArrayList<String> arrayList = new ArrayList();
    for (int i = 1; i <= 31; i++)
      arrayList.add(String.valueOf(i)); 
    return arrayList;
  }
  
  public List<String> d() {
    int i = Integer.parseInt(String.valueOf(this.e.p()));
    int j = Integer.parseInt(String.valueOf(this.e.o()));
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("");
    while (i <= j) {
      arrayList.add(String.valueOf(i));
      i++;
    } 
    return arrayList;
  }
  
  public List<String> e() {
    ArrayList<String> arrayList = new ArrayList();
    Iterator<Conta> iterator = this.d.f().q().a().iterator();
    while (iterator.hasNext())
      arrayList.add(hyx.a(iterator.next())); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hgh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */