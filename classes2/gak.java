import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class gak extends jwv {
  private gae b;
  
  private gad c;
  
  private gal d = new gal(this);
  
  public gak(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public gad a() {
    return this.c;
  }
  
  public void b() {
    try {
      this.c = new gad();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.d);
      return;
    } catch (Exception exception) {
      this.c = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */