import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyr extends jwv {
  private fuv b = null;
  
  private fuu c = null;
  
  private jys d = new jys(this);
  
  public jyr(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fuv a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fuv();
      this.b.a(new Vector<fuu>());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */