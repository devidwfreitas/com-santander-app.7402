import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class mri extends gnb {
  @Element(required = false)
  private String text;
  
  public mri(String paramString) {
    this.text = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\mri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */