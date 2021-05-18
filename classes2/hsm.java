import com.santander.app.emprestimo.creditopessoal.domain.ConsignadoCalculateContract;
import java.util.ArrayList;

public class hsm implements hsl {
  private hrj a;
  
  private hxq b;
  
  public hsm(hrj paramhrj) {
    this.a = paramhrj;
    this.b = hpp.n().h();
  }
  
  public void a() {
    this.a.a(this.b);
    ArrayList<ConsignadoCalculateContract> arrayList = new ArrayList();
    if (this.b.getContratosCalculate() != null)
      for (ConsignadoCalculateContract consignadoCalculateContract : this.b.getContratosCalculate()) {
        if (!consignadoCalculateContract.isBlockedFlag())
          arrayList.add(consignadoCalculateContract); 
      }  
    this.a.a(arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hsm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */