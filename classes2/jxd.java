import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jxd extends jwv {
  private fva b = null;
  
  private fvl c = null;
  
  private fvc d = null;
  
  private jxe e = new jxe(this);
  
  public jxd(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fva a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fva();
      this.b.a(new Vector<fvc>());
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.e);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */