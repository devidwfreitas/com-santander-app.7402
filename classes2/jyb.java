import android.util.Log;
import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jyb extends jwv {
  private ftp b = null;
  
  private jyc c = new jyc(this);
  
  public jyb(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public ftp a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new ftp();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.c);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */