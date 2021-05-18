package org.dom4j.io;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParserFactory;
import org.w3c.dom.Document;
import org.xml.sax.XMLReader;

class JAXPHelper {
  public static Document createDocument(boolean paramBoolean1, boolean paramBoolean2) {
    DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
    documentBuilderFactory.setValidating(paramBoolean1);
    documentBuilderFactory.setNamespaceAware(paramBoolean2);
    return documentBuilderFactory.newDocumentBuilder().newDocument();
  }
  
  public static XMLReader createXMLReader(boolean paramBoolean1, boolean paramBoolean2) {
    SAXParserFactory sAXParserFactory = SAXParserFactory.newInstance();
    sAXParserFactory.setValidating(paramBoolean1);
    sAXParserFactory.setNamespaceAware(paramBoolean2);
    return sAXParserFactory.newSAXParser().getXMLReader();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\JAXPHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */