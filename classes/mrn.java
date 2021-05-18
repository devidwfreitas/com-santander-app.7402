import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class mrn {
  @ElementList(required = false)
  private List<mro> todos;
  
  static ArrayList<mro> b() {
    ArrayList<mro> arrayList = new ArrayList();
    arrayList.add(new mro("033", "Santander"));
    arrayList.add(new mro("341", "Itaú Unibanco"));
    arrayList.add(new mro("237", "Bradesco"));
    arrayList.add(new mro("001", "Bco do Brasil"));
    arrayList.add(new mro("104", "C.E.Federal"));
    arrayList.add(new mro("399", "HSBC Brasil"));
    arrayList.add(new mro("745", "Citibank"));
    arrayList.add(new mro("004", "BNB"));
    arrayList.add(new mro("422", "Safra"));
    arrayList.add(new mro("074", "J.Safra"));
    arrayList.add(new mro("655", "Votorantim"));
    arrayList.add(new mro("212", "B. Original"));
    arrayList.add(new mro("208", "Btg Pactual"));
    arrayList.add(new mro("041", "BANRISUL"));
    arrayList.add(new mro("070", "BRB"));
    return arrayList;
  }
  
  public List<mro> a() {
    Iterator<mro> iterator = this.todos.iterator();
    while (iterator.hasNext()) {
      mro mro = iterator.next();
      if (mro.a().equalsIgnoreCase("033") || mro.a().equalsIgnoreCase("341") || mro.a().equalsIgnoreCase("237") || mro.a().equalsIgnoreCase("001") || mro.a().equalsIgnoreCase("104") || mro.a().equalsIgnoreCase("399") || mro.a().equalsIgnoreCase("745") || mro.a().equalsIgnoreCase("004") || mro.a().equalsIgnoreCase("422") || mro.a().equalsIgnoreCase("074") || mro.a().equalsIgnoreCase("655") || mro.a().equalsIgnoreCase("212") || mro.a().equalsIgnoreCase("208") || mro.a().equalsIgnoreCase("041") || mro.a().equalsIgnoreCase("070"))
        iterator.remove(); 
    } 
    this.todos.addAll(0, b());
    return this.todos;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mrn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */