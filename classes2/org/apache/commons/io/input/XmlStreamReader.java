package org.apache.commons.io.input;

import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;

public class XmlStreamReader extends Reader {
  private static final ByteOrderMark[] BOMS = new ByteOrderMark[] { ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE };
  
  private static final int BUFFER_SIZE = 4096;
  
  private static final Pattern CHARSET_PATTERN;
  
  private static final String EBCDIC = "CP1047";
  
  public static final Pattern ENCODING_PATTERN;
  
  private static final String HTTP_EX_1 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL";
  
  private static final String HTTP_EX_2 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";
  
  private static final String HTTP_EX_3 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME";
  
  private static final String RAW_EX_1 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";
  
  private static final String RAW_EX_2 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";
  
  private static final String US_ASCII = "US-ASCII";
  
  private static final String UTF_16 = "UTF-16";
  
  private static final String UTF_16BE = "UTF-16BE";
  
  private static final String UTF_16LE = "UTF-16LE";
  
  private static final String UTF_32 = "UTF-32";
  
  private static final String UTF_32BE = "UTF-32BE";
  
  private static final String UTF_32LE = "UTF-32LE";
  
  private static final String UTF_8 = "UTF-8";
  
  private static final ByteOrderMark[] XML_GUESS_BYTES = new ByteOrderMark[] { new ByteOrderMark("UTF-8", new int[] { 60, 63, 120, 109 }), new ByteOrderMark("UTF-16BE", new int[] { 0, 60, 0, 63 }), new ByteOrderMark("UTF-16LE", new int[] { 60, 0, 63, 0 }), new ByteOrderMark("UTF-32BE", new int[] { 
          0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 
          0, 120, 0, 0, 0, 109 }), new ByteOrderMark("UTF-32LE", new int[] { 
          60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 
          0, 0, 109, 0, 0, 0 }), new ByteOrderMark("CP1047", new int[] { 76, 111, 167, 148 }) };
  
  private final String defaultEncoding;
  
  private final String encoding;
  
  private final Reader reader;
  
  static {
    CHARSET_PATTERN = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
    ENCODING_PATTERN = Pattern.compile("<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:'.[^']*'))", 8);
  }
  
  public XmlStreamReader(File paramFile) {
    this(new FileInputStream(paramFile));
  }
  
  public XmlStreamReader(InputStream paramInputStream) {
    this(paramInputStream, true);
  }
  
  public XmlStreamReader(InputStream paramInputStream, String paramString) {
    this(paramInputStream, paramString, true);
  }
  
  public XmlStreamReader(InputStream paramInputStream, String paramString, boolean paramBoolean) {
    this(paramInputStream, paramString, paramBoolean, null);
  }
  
  public XmlStreamReader(InputStream paramInputStream, String paramString1, boolean paramBoolean, String paramString2) {
    this.defaultEncoding = paramString2;
    paramInputStream = new BOMInputStream(new BufferedInputStream(paramInputStream, 4096), false, BOMS);
    BOMInputStream bOMInputStream = new BOMInputStream(paramInputStream, true, XML_GUESS_BYTES);
    this.encoding = doHttpStream((BOMInputStream)paramInputStream, bOMInputStream, paramString1, paramBoolean);
    this.reader = new InputStreamReader(bOMInputStream, this.encoding);
  }
  
  public XmlStreamReader(InputStream paramInputStream, boolean paramBoolean) {
    this(paramInputStream, paramBoolean, (String)null);
  }
  
  public XmlStreamReader(InputStream paramInputStream, boolean paramBoolean, String paramString) {
    this.defaultEncoding = paramString;
    paramInputStream = new BOMInputStream(new BufferedInputStream(paramInputStream, 4096), false, BOMS);
    BOMInputStream bOMInputStream = new BOMInputStream(paramInputStream, true, XML_GUESS_BYTES);
    this.encoding = doRawStream((BOMInputStream)paramInputStream, bOMInputStream, paramBoolean);
    this.reader = new InputStreamReader(bOMInputStream, this.encoding);
  }
  
  public XmlStreamReader(URL paramURL) {
    this(CaMDOHTTPClient.openConnection(paramURL), (String)null);
  }
  
  public XmlStreamReader(URLConnection paramURLConnection, String paramString) {
    this.defaultEncoding = paramString;
    paramString = paramURLConnection.getContentType();
    BOMInputStream bOMInputStream1 = new BOMInputStream(new BufferedInputStream(paramURLConnection.getInputStream(), 4096), false, BOMS);
    BOMInputStream bOMInputStream2 = new BOMInputStream(bOMInputStream1, true, XML_GUESS_BYTES);
    if (paramURLConnection instanceof java.net.HttpURLConnection || paramString != null) {
      this.encoding = doHttpStream(bOMInputStream1, bOMInputStream2, paramString, true);
    } else {
      this.encoding = doRawStream(bOMInputStream1, bOMInputStream2, true);
    } 
    this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
  }
  
  private String doHttpStream(BOMInputStream paramBOMInputStream1, BOMInputStream paramBOMInputStream2, String paramString, boolean paramBoolean) {
    String str1 = paramBOMInputStream1.getBOMCharsetName();
    String str3 = paramBOMInputStream2.getBOMCharsetName();
    String str2 = getXmlProlog(paramBOMInputStream2, str3);
    try {
      return calculateHttpEncoding(paramString, str1, str3, str2, paramBoolean);
    } catch (XmlStreamReaderException xmlStreamReaderException) {
      if (paramBoolean)
        return doLenientDetection(paramString, xmlStreamReaderException); 
      throw xmlStreamReaderException;
    } 
  }
  
  private String doLenientDetection(String paramString, XmlStreamReaderException paramXmlStreamReaderException) {
    xmlStreamReaderException = paramXmlStreamReaderException;
    if (paramString != null) {
      xmlStreamReaderException = paramXmlStreamReaderException;
      if (paramString.startsWith("text/html")) {
        paramString = paramString.substring("text/html".length());
        paramString = "text/xml" + paramString;
        try {
          return calculateHttpEncoding(paramString, paramXmlStreamReaderException.getBomEncoding(), paramXmlStreamReaderException.getXmlGuessEncoding(), paramXmlStreamReaderException.getXmlEncoding(), true);
        } catch (XmlStreamReaderException xmlStreamReaderException) {}
      } 
    } 
    String str = xmlStreamReaderException.getXmlEncoding();
    paramString = str;
    if (str == null)
      paramString = xmlStreamReaderException.getContentTypeEncoding(); 
    str = paramString;
    return (paramString == null) ? ((this.defaultEncoding == null) ? "UTF-8" : this.defaultEncoding) : str;
  }
  
  private String doRawStream(BOMInputStream paramBOMInputStream1, BOMInputStream paramBOMInputStream2, boolean paramBoolean) {
    String str1 = paramBOMInputStream1.getBOMCharsetName();
    String str3 = paramBOMInputStream2.getBOMCharsetName();
    String str2 = getXmlProlog(paramBOMInputStream2, str3);
    try {
      return calculateRawEncoding(str1, str3, str2);
    } catch (XmlStreamReaderException xmlStreamReaderException) {
      if (paramBoolean)
        return doLenientDetection(null, xmlStreamReaderException); 
      throw xmlStreamReaderException;
    } 
  }
  
  static String getContentTypeEncoding(String paramString) {
    String str2 = null;
    String str1 = str2;
    if (paramString != null) {
      int i = paramString.indexOf(";");
      str1 = str2;
      if (i > -1) {
        paramString = paramString.substring(i + 1);
        Matcher matcher = CHARSET_PATTERN.matcher(paramString);
        if (matcher.find()) {
          String str = matcher.group(1);
        } else {
          matcher = null;
        } 
        str1 = str2;
        if (matcher != null)
          str1 = matcher.toUpperCase(Locale.US); 
      } 
    } 
    return str1;
  }
  
  static String getContentTypeMime(String paramString) {
    String str = null;
    if (paramString != null) {
      int i = paramString.indexOf(";");
      str = paramString;
      if (i >= 0)
        str = paramString.substring(0, i); 
      str = str.trim();
    } 
    return str;
  }
  
  private static String getXmlProlog(InputStream paramInputStream, String paramString) {
    String str;
    byte[] arrayOfByte2 = null;
    byte[] arrayOfByte1 = arrayOfByte2;
    if (paramString != null) {
      arrayOfByte1 = new byte[4096];
      paramInputStream.mark(4096);
      int j = paramInputStream.read(arrayOfByte1, 0, 4096);
      int i = -1;
      int k = 4096;
      int m = 0;
      String str1 = null;
      while (j != -1 && i == -1 && m < 4096) {
        m += j;
        k -= j;
        j = paramInputStream.read(arrayOfByte1, m, k);
        str1 = new String(arrayOfByte1, 0, m, paramString);
        i = str1.indexOf('>');
      } 
      if (i == -1) {
        if (j == -1)
          throw new IOException("Unexpected end of XML stream"); 
        throw new IOException("XML prolog or ROOT element not found on first " + m + " bytes");
      } 
      arrayOfByte1 = arrayOfByte2;
      if (m > 0) {
        paramInputStream.reset();
        BufferedReader bufferedReader = new BufferedReader(new StringReader(str1.substring(0, i + 1)));
        StringBuffer stringBuffer = new StringBuffer();
        for (String str2 = bufferedReader.readLine(); str2 != null; str2 = bufferedReader.readLine())
          stringBuffer.append(str2); 
        Matcher matcher = ENCODING_PATTERN.matcher(stringBuffer);
        arrayOfByte1 = arrayOfByte2;
        if (matcher.find()) {
          String str3 = matcher.group(1).toUpperCase();
          str = str3.substring(1, str3.length() - 1);
        } 
      } 
    } 
    return str;
  }
  
  static boolean isAppXml(String paramString) {
    return (paramString != null && (paramString.equals("application/xml") || paramString.equals("application/xml-dtd") || paramString.equals("application/xml-external-parsed-entity") || (paramString.startsWith("application/") && paramString.endsWith("+xml"))));
  }
  
  static boolean isTextXml(String paramString) {
    return (paramString != null && (paramString.equals("text/xml") || paramString.equals("text/xml-external-parsed-entity") || (paramString.startsWith("text/") && paramString.endsWith("+xml"))));
  }
  
  String calculateHttpEncoding(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
    if (paramBoolean && paramString4 != null)
      return paramString4; 
    String str2 = getContentTypeMime(paramString1);
    String str1 = getContentTypeEncoding(paramString1);
    paramBoolean = isAppXml(str2);
    boolean bool = isTextXml(str2);
    if (!paramBoolean && !bool)
      throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME", new Object[] { str2, str1, paramString2, paramString3, paramString4 }), str2, str1, paramString2, paramString3, paramString4); 
    if (str1 == null)
      return paramBoolean ? calculateRawEncoding(paramString2, paramString3, paramString4) : ((this.defaultEncoding == null) ? "US-ASCII" : this.defaultEncoding); 
    if (str1.equals("UTF-16BE") || str1.equals("UTF-16LE")) {
      paramString1 = str1;
      if (paramString2 != null)
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL", new Object[] { str2, str1, paramString2, paramString3, paramString4 }), str2, str1, paramString2, paramString3, paramString4); 
      return paramString1;
    } 
    if (str1.equals("UTF-16")) {
      if (paramString2 != null && paramString2.startsWith("UTF-16"))
        return paramString2; 
      throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch", new Object[] { str2, str1, paramString2, paramString3, paramString4 }), str2, str1, paramString2, paramString3, paramString4);
    } 
    if (str1.equals("UTF-32BE") || str1.equals("UTF-32LE")) {
      paramString1 = str1;
      if (paramString2 != null)
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL", new Object[] { str2, str1, paramString2, paramString3, paramString4 }), str2, str1, paramString2, paramString3, paramString4); 
      return paramString1;
    } 
    paramString1 = str1;
    if (str1.equals("UTF-32")) {
      if (paramString2 != null && paramString2.startsWith("UTF-32"))
        return paramString2; 
      throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch", new Object[] { str2, str1, paramString2, paramString3, paramString4 }), str2, str1, paramString2, paramString3, paramString4);
    } 
    return paramString1;
  }
  
  String calculateRawEncoding(String paramString1, String paramString2, String paramString3) {
    if (paramString1 == null) {
      if (paramString2 == null || paramString3 == null) {
        if (this.defaultEncoding == null) {
          paramString1 = "UTF-8";
        } else {
          paramString1 = this.defaultEncoding;
        } 
        return paramString1;
      } 
      return (paramString3.equals("UTF-16") && (paramString2.equals("UTF-16BE") || paramString2.equals("UTF-16LE"))) ? paramString2 : paramString3;
    } 
    if (paramString1.equals("UTF-8")) {
      if (paramString2 != null && !paramString2.equals("UTF-8"))
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
      String str = paramString1;
      if (paramString3 != null) {
        str = paramString1;
        if (!paramString3.equals("UTF-8"))
          throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
      } 
      return str;
    } 
    if (paramString1.equals("UTF-16BE") || paramString1.equals("UTF-16LE")) {
      if (paramString2 != null && !paramString2.equals(paramString1))
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
      String str = paramString1;
      if (paramString3 != null) {
        str = paramString1;
        if (!paramString3.equals("UTF-16")) {
          str = paramString1;
          if (!paramString3.equals(paramString1))
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
        } 
      } 
      return str;
    } 
    if (paramString1.equals("UTF-32BE") || paramString1.equals("UTF-32LE")) {
      if (paramString2 != null && !paramString2.equals(paramString1))
        throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
      String str = paramString1;
      if (paramString3 != null) {
        str = paramString1;
        if (!paramString3.equals("UTF-32")) {
          str = paramString1;
          if (!paramString3.equals(paramString1))
            throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3); 
        } 
      } 
      return str;
    } 
    throw new XmlStreamReaderException(MessageFormat.format("Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM", new Object[] { paramString1, paramString2, paramString3 }), paramString1, paramString2, paramString3);
  }
  
  public void close() {
    this.reader.close();
  }
  
  public String getDefaultEncoding() {
    return this.defaultEncoding;
  }
  
  public String getEncoding() {
    return this.encoding;
  }
  
  public int read(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    return this.reader.read(paramArrayOfchar, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\input\XmlStreamReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */