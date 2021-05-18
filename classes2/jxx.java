import android.util.Log;
import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;

public class jxx extends jwv {
  private ftn b = null;
  
  private jxy c = new jxy(this);
  
  public jxx(InputStream paramInputStream) {
    super(paramInputStream);
  }
  
  public ftn a() {
    return this.b;
  }
  
  public void b() {
    try {
      this.b = new ftn();
      SAXParser sAXParser = SAXParserFactory.newInstance().newSAXParser();
      InputSource inputSource = new InputSource(this.a);
      inputSource.setEncoding("UTF-8");
      sAXParser.parse(inputSource, this.c);
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      this.b = null;
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */