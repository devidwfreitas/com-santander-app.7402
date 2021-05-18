import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class hcu extends jwv {
  private hcs b = null;
  
  private hct c = null;
  
  private hcv d = new hcv(this);
  
  public hcu(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public hcs a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new hcs();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.d);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */