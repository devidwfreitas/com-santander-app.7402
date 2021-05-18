import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jzh extends jwv {
  private fuf b = null;
  
  private fun c = null;
  
  private jzi d = new jzi(this);
  
  public jzh(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fuf a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fuf();
      this.b.a(new Vector<fun>());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */