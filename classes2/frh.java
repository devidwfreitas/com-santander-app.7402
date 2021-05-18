import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class frh extends jwv {
  private frc b = null;
  
  private fri c = new fri(this);
  
  public frh(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public frc a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new frc();
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\frh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */