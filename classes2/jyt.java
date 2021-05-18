import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyt extends jwv {
  private ftg b = null;
  
  private fti c = null;
  
  private fth d = null;
  
  private Boolean e = Boolean.valueOf(false);
  
  private Boolean f = Boolean.valueOf(false);
  
  private jyu g = new jyu(this);
  
  public jyt(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public ftg a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new ftg();
      this.b.a(new Vector<fti>());
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.g);
      return;
    } catch (Exception exception) {
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */