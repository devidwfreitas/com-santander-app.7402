import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class kaf extends jwv {
  private ful b = null;
  
  private fum c = null;
  
  private kag d = new kag(this);
  
  public kaf(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public ful a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new ful();
      this.c = new fum();
      this.b.a(new Vector<fum>());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kaf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */