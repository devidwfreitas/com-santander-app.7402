import java.io.InputStream;
import java.util.Vector;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyl extends jwv {
  private fvz b = null;
  
  private fvx c = null;
  
  private jym d = new jym(this);
  
  public jyl(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public fvz a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new fvz();
      this.b.a(new Vector<fvx>());
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */