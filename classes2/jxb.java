import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jxb extends jwv {
  private fuy b = null;
  
  private fve c = null;
  
  private jxc d = new jxc(this);
  
  public jxb(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fuy a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fuy();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */