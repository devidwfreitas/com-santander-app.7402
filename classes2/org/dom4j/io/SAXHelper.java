package org.dom4j.io;

import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

class SAXHelper {
  private static boolean loggedWarning = true;
  
  public static XMLReader createXMLReader(boolean paramBoolean) {
    XMLReader xMLReader1 = null;
    if (!false)
      xMLReader1 = createXMLReaderViaJAXP(paramBoolean, true); 
    XMLReader xMLReader2 = xMLReader1;
    if (xMLReader1 == null) {
      try {
        xMLReader2 = XMLReaderFactory.createXMLReader();
        if (xMLReader2 == null)
          throw new SAXException("Couldn't create SAX reader"); 
      } catch (Exception exception) {
        if (isVerboseErrorReporting()) {
          System.out.println("Warning: Caught exception attempting to use SAX to load a SAX XMLReader ");
          System.out.println("Warning: Exception was: " + exception);
          System.out.println("Warning: I will print the stack trace then carry on using the default SAX parser");
          exception.printStackTrace();
        } 
        throw new SAXException(exception);
      } 
      return xMLReader2;
    } 
    if (xMLReader2 == null)
      throw new SAXException("Couldn't create SAX reader"); 
  }
  
  protected static XMLReader createXMLReaderViaJAXP(boolean paramBoolean1, boolean paramBoolean2) {
    try {
      return JAXPHelper.createXMLReader(paramBoolean1, paramBoolean2);
    } catch (Throwable throwable) {
      if (!loggedWarning) {
        loggedWarning = true;
        if (isVerboseErrorReporting()) {
          System.out.println("Warning: Caught exception attempting to use JAXP to load a SAX XMLReader");
          System.out.println("Warning: Exception was: " + throwable);
          throwable.printStackTrace();
        } 
      } 
      return null;
    } 
  }
  
  protected static boolean isVerboseErrorReporting() {
    try {
      String str = System.getProperty("org.dom4j.verbose");
      if (str != null) {
        boolean bool = str.equalsIgnoreCase("true");
        if (bool);
      } 
      return true;
    } catch (Exception exception) {
      return true;
    } 
  }
  
  public static boolean setParserFeature(XMLReader paramXMLReader, String paramString, boolean paramBoolean) {
    try {
      paramXMLReader.setFeature(paramString, paramBoolean);
      return true;
    } catch (SAXNotSupportedException sAXNotSupportedException) {
    
    } catch (SAXNotRecognizedException sAXNotRecognizedException) {}
    return false;
  }
  
  public static boolean setParserProperty(XMLReader paramXMLReader, String paramString, Object paramObject) {
    try {
      paramXMLReader.setProperty(paramString, paramObject);
      return true;
    } catch (SAXNotSupportedException sAXNotSupportedException) {
    
    } catch (SAXNotRecognizedException sAXNotRecognizedException) {}
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */