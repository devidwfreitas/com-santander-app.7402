package org.dom4j.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.ElementHandler;
import org.xml.sax.ContentHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

public class SAXReader {
  private static final String SAX_DECL_HANDLER = "http://xml.org/sax/properties/declaration-handler";
  
  private static final String SAX_LEXICALHANDLER = "http://xml.org/sax/handlers/LexicalHandler";
  
  private static final String SAX_LEXICAL_HANDLER = "http://xml.org/sax/properties/lexical-handler";
  
  private static final String SAX_NAMESPACES = "http://xml.org/sax/features/namespaces";
  
  private static final String SAX_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
  
  private static final String SAX_STRING_INTERNING = "http://xml.org/sax/features/string-interning";
  
  private DispatchHandler dispatchHandler;
  
  private String encoding = null;
  
  private EntityResolver entityResolver;
  
  private ErrorHandler errorHandler;
  
  private DocumentFactory factory;
  
  private boolean ignoreComments = false;
  
  private boolean includeExternalDTDDeclarations = false;
  
  private boolean includeInternalDTDDeclarations = false;
  
  private boolean mergeAdjacentText = false;
  
  private boolean stringInternEnabled = true;
  
  private boolean stripWhitespaceText = false;
  
  private boolean validating;
  
  private XMLFilter xmlFilter;
  
  private XMLReader xmlReader;
  
  public SAXReader() {}
  
  public SAXReader(String paramString) {
    if (paramString != null)
      this.xmlReader = XMLReaderFactory.createXMLReader(paramString); 
  }
  
  public SAXReader(String paramString, boolean paramBoolean) {
    if (paramString != null)
      this.xmlReader = XMLReaderFactory.createXMLReader(paramString); 
    this.validating = paramBoolean;
  }
  
  public SAXReader(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
  }
  
  public SAXReader(DocumentFactory paramDocumentFactory, boolean paramBoolean) {
    this.factory = paramDocumentFactory;
    this.validating = paramBoolean;
  }
  
  public SAXReader(XMLReader paramXMLReader) {
    this.xmlReader = paramXMLReader;
  }
  
  public SAXReader(XMLReader paramXMLReader, boolean paramBoolean) {
    this.xmlReader = paramXMLReader;
    this.validating = paramBoolean;
  }
  
  public SAXReader(boolean paramBoolean) {
    this.validating = paramBoolean;
  }
  
  public void addHandler(String paramString, ElementHandler paramElementHandler) {
    getDispatchHandler().addHandler(paramString, paramElementHandler);
  }
  
  protected void configureReader(XMLReader paramXMLReader, DefaultHandler paramDefaultHandler) {
    SAXHelper.setParserProperty(paramXMLReader, "http://xml.org/sax/handlers/LexicalHandler", paramDefaultHandler);
    SAXHelper.setParserProperty(paramXMLReader, "http://xml.org/sax/properties/lexical-handler", paramDefaultHandler);
    if (this.includeInternalDTDDeclarations || this.includeExternalDTDDeclarations)
      SAXHelper.setParserProperty(paramXMLReader, "http://xml.org/sax/properties/declaration-handler", paramDefaultHandler); 
    SAXHelper.setParserFeature(paramXMLReader, "http://xml.org/sax/features/namespaces", true);
    SAXHelper.setParserFeature(paramXMLReader, "http://xml.org/sax/features/namespace-prefixes", false);
    SAXHelper.setParserFeature(paramXMLReader, "http://xml.org/sax/features/string-interning", isStringInternEnabled());
    SAXHelper.setParserFeature(paramXMLReader, "http://xml.org/sax/features/use-locator2", true);
    try {
      paramXMLReader.setFeature("http://xml.org/sax/features/validation", isValidating());
      if (this.errorHandler != null) {
        paramXMLReader.setErrorHandler(this.errorHandler);
        return;
      } 
      paramXMLReader.setErrorHandler(paramDefaultHandler);
      return;
    } catch (Exception exception) {
      if (isValidating())
        throw new DocumentException("Validation not supported for XMLReader: " + paramXMLReader, exception); 
      return;
    } 
  }
  
  protected SAXContentHandler createContentHandler(XMLReader paramXMLReader) {
    return new SAXContentHandler(getDocumentFactory(), this.dispatchHandler);
  }
  
  protected EntityResolver createDefaultEntityResolver(String paramString) {
    String str2 = null;
    String str1 = str2;
    if (paramString != null) {
      str1 = str2;
      if (paramString.length() > 0) {
        int i = paramString.lastIndexOf('/');
        str1 = str2;
        if (i > 0)
          str1 = paramString.substring(0, i + 1); 
      } 
    } 
    return new SAXReader$SAXEntityResolver(str1);
  }
  
  protected XMLReader createXMLReader() {
    return SAXHelper.createXMLReader(isValidating());
  }
  
  protected DispatchHandler getDispatchHandler() {
    if (this.dispatchHandler == null)
      this.dispatchHandler = new DispatchHandler(); 
    return this.dispatchHandler;
  }
  
  public DocumentFactory getDocumentFactory() {
    if (this.factory == null)
      this.factory = DocumentFactory.getInstance(); 
    return this.factory;
  }
  
  public String getEncoding() {
    return this.encoding;
  }
  
  public EntityResolver getEntityResolver() {
    return this.entityResolver;
  }
  
  public ErrorHandler getErrorHandler() {
    return this.errorHandler;
  }
  
  public XMLFilter getXMLFilter() {
    return this.xmlFilter;
  }
  
  public XMLReader getXMLReader() {
    if (this.xmlReader == null)
      this.xmlReader = createXMLReader(); 
    return this.xmlReader;
  }
  
  protected XMLReader installXMLFilter(XMLReader paramXMLReader) {
    XMLFilter xMLFilter = getXMLFilter();
    if (xMLFilter != null) {
      XMLFilter xMLFilter1 = xMLFilter;
      while (true) {
        XMLReader xMLReader = xMLFilter1.getParent();
        if (xMLReader instanceof XMLFilter) {
          xMLFilter1 = (XMLFilter)xMLReader;
          continue;
        } 
        xMLFilter1.setParent(paramXMLReader);
        return xMLFilter;
      } 
    } 
    return paramXMLReader;
  }
  
  public boolean isIgnoreComments() {
    return this.ignoreComments;
  }
  
  public boolean isIncludeExternalDTDDeclarations() {
    return this.includeExternalDTDDeclarations;
  }
  
  public boolean isIncludeInternalDTDDeclarations() {
    return this.includeInternalDTDDeclarations;
  }
  
  public boolean isMergeAdjacentText() {
    return this.mergeAdjacentText;
  }
  
  public boolean isStringInternEnabled() {
    return this.stringInternEnabled;
  }
  
  public boolean isStripWhitespaceText() {
    return this.stripWhitespaceText;
  }
  
  public boolean isValidating() {
    return this.validating;
  }
  
  public Document read(File paramFile) {
    try {
      InputSource inputSource = new InputSource(new FileInputStream(paramFile));
      if (this.encoding != null)
        inputSource.setEncoding(this.encoding); 
      String str = paramFile.getAbsolutePath();
      if (str != null) {
        StringBuffer stringBuffer = new StringBuffer("file://");
        if (!str.startsWith(File.separator))
          stringBuffer.append("/"); 
        stringBuffer.append(str.replace('\\', '/'));
        inputSource.setSystemId(stringBuffer.toString());
      } 
      return read(inputSource);
    } catch (FileNotFoundException fileNotFoundException) {
      throw new DocumentException(fileNotFoundException.getMessage(), fileNotFoundException);
    } 
  }
  
  public Document read(InputStream paramInputStream) {
    InputSource inputSource = new InputSource(paramInputStream);
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(InputStream paramInputStream, String paramString) {
    InputSource inputSource = new InputSource(paramInputStream);
    inputSource.setSystemId(paramString);
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(Reader paramReader) {
    InputSource inputSource = new InputSource(paramReader);
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(Reader paramReader, String paramString) {
    InputSource inputSource = new InputSource(paramReader);
    inputSource.setSystemId(paramString);
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(String paramString) {
    InputSource inputSource = new InputSource(paramString);
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(URL paramURL) {
    InputSource inputSource = new InputSource(paramURL.toExternalForm());
    if (this.encoding != null)
      inputSource.setEncoding(this.encoding); 
    return read(inputSource);
  }
  
  public Document read(InputSource paramInputSource) {
    try {
      XMLReader xMLReader = installXMLFilter(getXMLReader());
      EntityResolver entityResolver2 = this.entityResolver;
      EntityResolver entityResolver1 = entityResolver2;
      if (entityResolver2 == null) {
        entityResolver1 = createDefaultEntityResolver(paramInputSource.getSystemId());
        this.entityResolver = entityResolver1;
      } 
      xMLReader.setEntityResolver(entityResolver1);
      entityResolver2 = createContentHandler(xMLReader);
      entityResolver2.setEntityResolver(entityResolver1);
      entityResolver2.setInputSource(paramInputSource);
      boolean bool1 = isIncludeInternalDTDDeclarations();
      boolean bool2 = isIncludeExternalDTDDeclarations();
      entityResolver2.setIncludeInternalDTDDeclarations(bool1);
      entityResolver2.setIncludeExternalDTDDeclarations(bool2);
      entityResolver2.setMergeAdjacentText(isMergeAdjacentText());
      entityResolver2.setStripWhitespaceText(isStripWhitespaceText());
      entityResolver2.setIgnoreComments(isIgnoreComments());
      xMLReader.setContentHandler((ContentHandler)entityResolver2);
      configureReader(xMLReader, (DefaultHandler)entityResolver2);
      xMLReader.parse(paramInputSource);
      return entityResolver2.getDocument();
    } catch (Exception exception) {
      if (exception instanceof SAXParseException) {
        SAXParseException sAXParseException = (SAXParseException)exception;
        String str2 = sAXParseException.getSystemId();
        String str1 = str2;
        if (str2 == null)
          str1 = ""; 
        throw new DocumentException("Error on line " + sAXParseException.getLineNumber() + " of document " + str1 + " : " + sAXParseException.getMessage(), exception);
      } 
      throw new DocumentException(exception.getMessage(), exception);
    } 
  }
  
  public void removeHandler(String paramString) {
    getDispatchHandler().removeHandler(paramString);
  }
  
  public void resetHandlers() {
    getDispatchHandler().resetHandlers();
  }
  
  public void setDefaultHandler(ElementHandler paramElementHandler) {
    getDispatchHandler().setDefaultHandler(paramElementHandler);
  }
  
  protected void setDispatchHandler(DispatchHandler paramDispatchHandler) {
    this.dispatchHandler = paramDispatchHandler;
  }
  
  public void setDocumentFactory(DocumentFactory paramDocumentFactory) {
    this.factory = paramDocumentFactory;
  }
  
  public void setEncoding(String paramString) {
    this.encoding = paramString;
  }
  
  public void setEntityResolver(EntityResolver paramEntityResolver) {
    this.entityResolver = paramEntityResolver;
  }
  
  public void setErrorHandler(ErrorHandler paramErrorHandler) {
    this.errorHandler = paramErrorHandler;
  }
  
  public void setFeature(String paramString, boolean paramBoolean) {
    getXMLReader().setFeature(paramString, paramBoolean);
  }
  
  public void setIgnoreComments(boolean paramBoolean) {
    this.ignoreComments = paramBoolean;
  }
  
  public void setIncludeExternalDTDDeclarations(boolean paramBoolean) {
    this.includeExternalDTDDeclarations = paramBoolean;
  }
  
  public void setIncludeInternalDTDDeclarations(boolean paramBoolean) {
    this.includeInternalDTDDeclarations = paramBoolean;
  }
  
  public void setMergeAdjacentText(boolean paramBoolean) {
    this.mergeAdjacentText = paramBoolean;
  }
  
  public void setProperty(String paramString, Object paramObject) {
    getXMLReader().setProperty(paramString, paramObject);
  }
  
  public void setStringInternEnabled(boolean paramBoolean) {
    this.stringInternEnabled = paramBoolean;
  }
  
  public void setStripWhitespaceText(boolean paramBoolean) {
    this.stripWhitespaceText = paramBoolean;
  }
  
  public void setValidation(boolean paramBoolean) {
    this.validating = paramBoolean;
  }
  
  public void setXMLFilter(XMLFilter paramXMLFilter) {
    this.xmlFilter = paramXMLFilter;
  }
  
  public void setXMLReader(XMLReader paramXMLReader) {
    this.xmlReader = paramXMLReader;
  }
  
  public void setXMLReaderClassName(String paramString) {
    setXMLReader(XMLReaderFactory.createXMLReader(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\SAXReader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */