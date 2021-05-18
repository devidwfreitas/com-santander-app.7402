import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class gam extends jwv {
  private gan b = new gan(this);
  
  private gaf c = null;
  
  private gag d;
  
  public gam(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public gag a() {
    return this.d;
  }
  
  public void b() {
    try {
      this.d = new gag();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.b);
      return;
    } catch (Exception exception) {
      this.d = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */