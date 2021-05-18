import br.com.santander.uisdk.edittext.SantanderEditText;
import java.util.ArrayList;
import java.util.List;

public class ang {
  private SantanderEditText a;
  
  private List<ane> b;
  
  public ang(SantanderEditText paramSantanderEditText) {
    this.a = paramSantanderEditText;
  }
  
  public SantanderEditText a() {
    return this.a;
  }
  
  public void a(ane paramane) {
    if (this.b == null)
      this.b = new ArrayList<ane>(); 
    this.b.add(paramane);
  }
  
  public void a(SantanderEditText paramSantanderEditText) {
    this.a = paramSantanderEditText;
  }
  
  public void a(List<ane> paramList) {
    this.b = paramList;
  }
  
  public List<ane> b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ang.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */