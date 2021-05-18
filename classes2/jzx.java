import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jzx extends jwv {
  private fvh b = null;
  
  private jzy c = new jzy(this);
  
  public jzx(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fvh a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fvh();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */