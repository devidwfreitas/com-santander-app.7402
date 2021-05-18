import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jzb extends jwv {
  private fud b = null;
  
  private jzc c = new jzc(this);
  
  public jzb(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fud a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fud();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */