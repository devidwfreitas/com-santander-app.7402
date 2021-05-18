import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jqs extends jwv {
  private jqm b = null;
  
  private jqt c = new jqt(this);
  
  public jqs(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public jqm a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new jqm();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */