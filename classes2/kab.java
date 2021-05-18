import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class kab extends jwv {
  private fvi b = null;
  
  private kac c = new kac(this);
  
  public kab(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fvi a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fvi();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.c);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */