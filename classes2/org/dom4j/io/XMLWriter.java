package org.dom4j.io;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.NodeType;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.XMLFilterImpl;

public class XMLWriter extends XMLFilterImpl implements LexicalHandler {
  protected static final OutputFormat DEFAULT_FORMAT;
  
  protected static final String[] LEXICAL_HANDLER_NAMES = new String[] { "http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler" };
  
  private static final String PAD_TEXT = " ";
  
  private boolean autoFlush;
  
  private StringBuffer buffer = new StringBuffer();
  
  private boolean charsAdded = false;
  
  private boolean escapeText = true;
  
  private OutputFormat format;
  
  private boolean inDTD;
  
  private int indentLevel = 0;
  
  private char lastChar;
  
  private boolean lastElementClosed = false;
  
  protected NodeType lastOutputNodeType;
  
  private LexicalHandler lexicalHandler;
  
  private int maximumAllowedCharacter;
  
  private NamespaceStack namespaceStack = new NamespaceStack();
  
  private Map<String, String> namespacesMap;
  
  protected boolean preserve = false;
  
  private boolean resolveEntityRefs = true;
  
  private boolean showCommentsInDTDs;
  
  protected Writer writer;
  
  static {
    DEFAULT_FORMAT = new OutputFormat();
  }
  
  public XMLWriter() {
    this.format = DEFAULT_FORMAT;
    this.writer = new BufferedWriter(new OutputStreamWriter(System.out));
    this.autoFlush = true;
    this.namespaceStack.push(Namespace.NO_NAMESPACE);
  }
  
  public XMLWriter(OutputStream paramOutputStream) {
    this.format = DEFAULT_FORMAT;
    this.writer = createWriter(paramOutputStream, this.format.getEncoding());
    this.autoFlush = true;
    this.namespaceStack.push(Namespace.NO_NAMESPACE);
  }
  
  public XMLWriter(OutputStream paramOutputStream, OutputFormat paramOutputFormat) {
    this.format = paramOutputFormat;
    this.writer = createWriter(paramOutputStream, paramOutputFormat.getEncoding());
    this.autoFlush = true;
    this.namespaceStack.push(Namespace.NO_NAMESPACE);
  }
  
  public XMLWriter(Writer paramWriter) {
    this(paramWriter, DEFAULT_FORMAT);
  }
  
  public XMLWriter(Writer paramWriter, OutputFormat paramOutputFormat) {
    this.writer = paramWriter;
    this.format = paramOutputFormat;
    this.namespaceStack.push(Namespace.NO_NAMESPACE);
  }
  
  public XMLWriter(OutputFormat paramOutputFormat) {
    this.format = paramOutputFormat;
    this.writer = createWriter(System.out, paramOutputFormat.getEncoding());
    this.autoFlush = true;
    this.namespaceStack.push(Namespace.NO_NAMESPACE);
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (paramArrayOfchar == null || paramArrayOfchar.length == 0 || paramInt2 <= 0)
      return; 
    try {
      String str = String.valueOf(paramArrayOfchar, paramInt1, paramInt2);
      if (this.escapeText)
        str = escapeElementEntities(str); 
      if (this.format.isTrimText()) {
        if (this.lastOutputNodeType == NodeType.TEXT_NODE && !this.charsAdded) {
          this.writer.write(32);
        } else if (this.charsAdded && Character.isWhitespace(this.lastChar)) {
          this.writer.write(32);
        } else if (this.lastOutputNodeType == NodeType.ELEMENT_NODE && this.format.isPadText() && this.lastElementClosed && Character.isWhitespace(paramArrayOfchar[0])) {
          this.writer.write(" ");
        } 
        String str1 = "";
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        for (str = str1; stringTokenizer.hasMoreTokens(); str = " ") {
          this.writer.write(str);
          this.writer.write(stringTokenizer.nextToken());
        } 
      } else {
        this.writer.write(str);
      } 
    } catch (IOException iOException) {
      handleException(iOException);
      return;
    } 
    this.charsAdded = true;
    this.lastChar = iOException[paramInt1 + paramInt2 - 1];
    this.lastOutputNodeType = NodeType.TEXT_NODE;
    super.characters((char[])iOException, paramInt1, paramInt2);
  }
  
  public void close() {
    this.writer.close();
  }
  
  public void comment(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    if (this.showCommentsInDTDs || !this.inDTD)
      try {
        this.charsAdded = false;
        writeComment(new String(paramArrayOfchar, paramInt1, paramInt2));
      } catch (IOException iOException) {
        handleException(iOException);
      }  
    if (this.lexicalHandler != null)
      this.lexicalHandler.comment(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  protected Writer createWriter(OutputStream paramOutputStream, String paramString) {
    return new BufferedWriter(new OutputStreamWriter(paramOutputStream, paramString));
  }
  
  protected int defaultMaximumAllowedCharacter() {
    String str = this.format.getEncoding();
    return (str != null && str.equals("US-ASCII")) ? 127 : -1;
  }
  
  public void endCDATA() {
    try {
      this.writer.write("]]>");
    } catch (IOException iOException) {
      handleException(iOException);
    } 
    if (this.lexicalHandler != null)
      this.lexicalHandler.endCDATA(); 
  }
  
  public void endDTD() {
    this.inDTD = false;
    if (this.lexicalHandler != null)
      this.lexicalHandler.endDTD(); 
  }
  
  public void endDocument() {
    super.endDocument();
    if (this.autoFlush)
      try {
        flush();
        return;
      } catch (IOException iOException) {
        return;
      }  
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    try {
      this.charsAdded = false;
      this.indentLevel--;
      if (this.lastElementClosed) {
        writePrintln();
        indent();
      } 
      writeClose(paramString3);
      this.lastOutputNodeType = NodeType.ELEMENT_NODE;
      this.lastElementClosed = true;
      super.endElement(paramString1, paramString2, paramString3);
      return;
    } catch (IOException iOException) {
      handleException(iOException);
      return;
    } 
  }
  
  public void endEntity(String paramString) {
    if (this.lexicalHandler != null)
      this.lexicalHandler.endEntity(paramString); 
  }
  
  public void endPrefixMapping(String paramString) {
    super.endPrefixMapping(paramString);
  }
  
  protected String escapeAttributeEntities(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: getfield format : Lorg/dom4j/io/OutputFormat;
    //   4: invokevirtual getAttributeQuoteCharacter : ()C
    //   7: istore #5
    //   9: aload_1
    //   10: invokevirtual length : ()I
    //   13: istore #6
    //   15: iconst_0
    //   16: istore_3
    //   17: iconst_0
    //   18: istore #4
    //   20: aconst_null
    //   21: astore #8
    //   23: iload #4
    //   25: iload #6
    //   27: if_icmpge -> 281
    //   30: aload_1
    //   31: iload #4
    //   33: invokevirtual charAt : (I)C
    //   36: istore_2
    //   37: iload_2
    //   38: lookupswitch default -> 112, 9 -> 275, 10 -> 275, 13 -> 275, 34 -> 252, 38 -> 267, 39 -> 237, 60 -> 221, 62 -> 229
    //   112: iload_2
    //   113: bipush #32
    //   115: if_icmplt -> 126
    //   118: aload_0
    //   119: iload_2
    //   120: invokevirtual shouldEncodeChar : (C)Z
    //   123: ifeq -> 348
    //   126: new java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: ldc_w '&#'
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: iload_2
    //   140: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   143: ldc_w ';'
    //   146: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual toString : ()Ljava/lang/String;
    //   152: astore #7
    //   154: aload #7
    //   156: ifnull -> 341
    //   159: aload #8
    //   161: astore #9
    //   163: aload #8
    //   165: ifnonnull -> 174
    //   168: aload_1
    //   169: invokevirtual toCharArray : ()[C
    //   172: astore #9
    //   174: aload_0
    //   175: getfield buffer : Ljava/lang/StringBuffer;
    //   178: aload #9
    //   180: iload_3
    //   181: iload #4
    //   183: iload_3
    //   184: isub
    //   185: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   188: pop
    //   189: aload_0
    //   190: getfield buffer : Ljava/lang/StringBuffer;
    //   193: aload #7
    //   195: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   198: pop
    //   199: aload #9
    //   201: astore #7
    //   203: iload #4
    //   205: iconst_1
    //   206: iadd
    //   207: istore_3
    //   208: iload #4
    //   210: iconst_1
    //   211: iadd
    //   212: istore #4
    //   214: aload #7
    //   216: astore #8
    //   218: goto -> 23
    //   221: ldc_w '&lt;'
    //   224: astore #7
    //   226: goto -> 154
    //   229: ldc_w '&gt;'
    //   232: astore #7
    //   234: goto -> 154
    //   237: iload #5
    //   239: bipush #39
    //   241: if_icmpne -> 348
    //   244: ldc_w '&apos;'
    //   247: astore #7
    //   249: goto -> 154
    //   252: iload #5
    //   254: bipush #34
    //   256: if_icmpne -> 348
    //   259: ldc_w '&quot;'
    //   262: astore #7
    //   264: goto -> 154
    //   267: ldc_w '&amp;'
    //   270: astore #7
    //   272: goto -> 154
    //   275: aconst_null
    //   276: astore #7
    //   278: goto -> 154
    //   281: iload_3
    //   282: ifne -> 287
    //   285: aload_1
    //   286: areturn
    //   287: iload_3
    //   288: iload #6
    //   290: if_icmpge -> 323
    //   293: aload #8
    //   295: astore #7
    //   297: aload #8
    //   299: ifnonnull -> 308
    //   302: aload_1
    //   303: invokevirtual toCharArray : ()[C
    //   306: astore #7
    //   308: aload_0
    //   309: getfield buffer : Ljava/lang/StringBuffer;
    //   312: aload #7
    //   314: iload_3
    //   315: iload #4
    //   317: iload_3
    //   318: isub
    //   319: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   322: pop
    //   323: aload_0
    //   324: getfield buffer : Ljava/lang/StringBuffer;
    //   327: invokevirtual toString : ()Ljava/lang/String;
    //   330: astore_1
    //   331: aload_0
    //   332: getfield buffer : Ljava/lang/StringBuffer;
    //   335: iconst_0
    //   336: invokevirtual setLength : (I)V
    //   339: aload_1
    //   340: areturn
    //   341: aload #8
    //   343: astore #7
    //   345: goto -> 208
    //   348: aconst_null
    //   349: astore #7
    //   351: goto -> 154
  }
  
  protected String escapeElementEntities(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual length : ()I
    //   4: istore #5
    //   6: iconst_0
    //   7: istore_3
    //   8: iconst_0
    //   9: istore #4
    //   11: aconst_null
    //   12: astore #7
    //   14: iload #4
    //   16: iload #5
    //   18: if_icmpge -> 237
    //   21: aload_1
    //   22: iload #4
    //   24: invokevirtual charAt : (I)C
    //   27: istore_2
    //   28: iload_2
    //   29: lookupswitch default -> 88, 9 -> 221, 10 -> 221, 13 -> 221, 38 -> 213, 60 -> 197, 62 -> 205
    //   88: iload_2
    //   89: bipush #32
    //   91: if_icmplt -> 102
    //   94: aload_0
    //   95: iload_2
    //   96: invokevirtual shouldEncodeChar : (C)Z
    //   99: ifeq -> 304
    //   102: new java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial <init> : ()V
    //   109: ldc_w '&#'
    //   112: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: iload_2
    //   116: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   119: ldc_w ';'
    //   122: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual toString : ()Ljava/lang/String;
    //   128: astore #6
    //   130: aload #6
    //   132: ifnull -> 297
    //   135: aload #7
    //   137: astore #8
    //   139: aload #7
    //   141: ifnonnull -> 150
    //   144: aload_1
    //   145: invokevirtual toCharArray : ()[C
    //   148: astore #8
    //   150: aload_0
    //   151: getfield buffer : Ljava/lang/StringBuffer;
    //   154: aload #8
    //   156: iload_3
    //   157: iload #4
    //   159: iload_3
    //   160: isub
    //   161: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   164: pop
    //   165: aload_0
    //   166: getfield buffer : Ljava/lang/StringBuffer;
    //   169: aload #6
    //   171: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   174: pop
    //   175: aload #8
    //   177: astore #6
    //   179: iload #4
    //   181: iconst_1
    //   182: iadd
    //   183: istore_3
    //   184: iload #4
    //   186: iconst_1
    //   187: iadd
    //   188: istore #4
    //   190: aload #6
    //   192: astore #7
    //   194: goto -> 14
    //   197: ldc_w '&lt;'
    //   200: astore #6
    //   202: goto -> 130
    //   205: ldc_w '&gt;'
    //   208: astore #6
    //   210: goto -> 130
    //   213: ldc_w '&amp;'
    //   216: astore #6
    //   218: goto -> 130
    //   221: aload_0
    //   222: getfield preserve : Z
    //   225: ifeq -> 304
    //   228: iload_2
    //   229: invokestatic valueOf : (C)Ljava/lang/String;
    //   232: astore #6
    //   234: goto -> 130
    //   237: iload_3
    //   238: ifne -> 243
    //   241: aload_1
    //   242: areturn
    //   243: iload_3
    //   244: iload #5
    //   246: if_icmpge -> 279
    //   249: aload #7
    //   251: astore #6
    //   253: aload #7
    //   255: ifnonnull -> 264
    //   258: aload_1
    //   259: invokevirtual toCharArray : ()[C
    //   262: astore #6
    //   264: aload_0
    //   265: getfield buffer : Ljava/lang/StringBuffer;
    //   268: aload #6
    //   270: iload_3
    //   271: iload #4
    //   273: iload_3
    //   274: isub
    //   275: invokevirtual append : ([CII)Ljava/lang/StringBuffer;
    //   278: pop
    //   279: aload_0
    //   280: getfield buffer : Ljava/lang/StringBuffer;
    //   283: invokevirtual toString : ()Ljava/lang/String;
    //   286: astore_1
    //   287: aload_0
    //   288: getfield buffer : Ljava/lang/StringBuffer;
    //   291: iconst_0
    //   292: invokevirtual setLength : (I)V
    //   295: aload_1
    //   296: areturn
    //   297: aload #7
    //   299: astore #6
    //   301: goto -> 184
    //   304: aconst_null
    //   305: astore #6
    //   307: goto -> 130
  }
  
  public void flush() {
    this.writer.flush();
  }
  
  public LexicalHandler getLexicalHandler() {
    return this.lexicalHandler;
  }
  
  public int getMaximumAllowedCharacter() {
    if (this.maximumAllowedCharacter == 0)
      this.maximumAllowedCharacter = defaultMaximumAllowedCharacter(); 
    return this.maximumAllowedCharacter;
  }
  
  protected OutputFormat getOutputFormat() {
    return this.format;
  }
  
  public Object getProperty(String paramString) {
    for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
      if (LEXICAL_HANDLER_NAMES[i].equals(paramString))
        return getLexicalHandler(); 
    } 
    return super.getProperty(paramString);
  }
  
  protected void handleException(IOException paramIOException) {
    throw new SAXException(paramIOException);
  }
  
  public void ignorableWhitespace(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.ignorableWhitespace(paramArrayOfchar, paramInt1, paramInt2);
  }
  
  protected void indent() {
    String str = this.format.getIndent();
    if (str != null && str.length() > 0)
      for (int i = 0; i < this.indentLevel; i++)
        this.writer.write(str);  
  }
  
  protected void installLexicalHandler() {
    XMLReader xMLReader = getParent();
    if (xMLReader == null)
      throw new NullPointerException("No parent for filter"); 
    for (int i = 0;; i++) {
      if (i < LEXICAL_HANDLER_NAMES.length) {
        try {
          xMLReader.setProperty(LEXICAL_HANDLER_NAMES[i], this);
          return;
        } catch (SAXNotRecognizedException sAXNotRecognizedException) {
        
        } catch (SAXNotSupportedException sAXNotSupportedException) {}
      } else {
        return;
      } 
    } 
  }
  
  protected final boolean isElementSpacePreserved(Element paramElement) {
    Attribute attribute = paramElement.attribute("space");
    boolean bool = this.preserve;
    if (attribute != null) {
      if ("xml".equals(attribute.getNamespacePrefix()) && "preserve".equals(attribute.getText()))
        return true; 
    } else {
      return bool;
    } 
    return false;
  }
  
  public boolean isEscapeText() {
    return this.escapeText;
  }
  
  protected boolean isExpandEmptyElements() {
    return this.format.isExpandEmptyElements();
  }
  
  protected boolean isNamespaceDeclaration(Namespace paramNamespace) {
    return (paramNamespace != null && paramNamespace != Namespace.XML_NAMESPACE && paramNamespace.getURI() != null && !this.namespaceStack.contains(paramNamespace));
  }
  
  public void notationDecl(String paramString1, String paramString2, String paramString3) {
    super.notationDecl(paramString1, paramString2, paramString3);
  }
  
  public void parse(InputSource paramInputSource) {
    installLexicalHandler();
    super.parse(paramInputSource);
  }
  
  public void println() {
    this.writer.write(this.format.getLineSeparator());
  }
  
  public void processingInstruction(String paramString1, String paramString2) {
    try {
      indent();
      this.writer.write("<?");
      this.writer.write(paramString1);
      this.writer.write(" ");
      this.writer.write(paramString2);
      this.writer.write("?>");
      writePrintln();
      this.lastOutputNodeType = NodeType.PROCESSING_INSTRUCTION_NODE;
      super.processingInstruction(paramString1, paramString2);
      return;
    } catch (IOException iOException) {
      handleException(iOException);
      return;
    } 
  }
  
  public boolean resolveEntityRefs() {
    return this.resolveEntityRefs;
  }
  
  public void setDocumentLocator(Locator paramLocator) {
    super.setDocumentLocator(paramLocator);
  }
  
  public void setEscapeText(boolean paramBoolean) {
    this.escapeText = paramBoolean;
  }
  
  public void setIndentLevel(int paramInt) {
    this.indentLevel = paramInt;
  }
  
  public void setLexicalHandler(LexicalHandler paramLexicalHandler) {
    if (paramLexicalHandler == null)
      throw new NullPointerException("Null lexical handler"); 
    this.lexicalHandler = paramLexicalHandler;
  }
  
  public void setMaximumAllowedCharacter(int paramInt) {
    this.maximumAllowedCharacter = paramInt;
  }
  
  public void setOutputStream(OutputStream paramOutputStream) {
    this.writer = createWriter(paramOutputStream, this.format.getEncoding());
    this.autoFlush = true;
  }
  
  public void setProperty(String paramString, Object paramObject) {
    for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
      if (LEXICAL_HANDLER_NAMES[i].equals(paramString)) {
        setLexicalHandler((LexicalHandler)paramObject);
        return;
      } 
    } 
    super.setProperty(paramString, paramObject);
  }
  
  public void setResolveEntityRefs(boolean paramBoolean) {
    this.resolveEntityRefs = paramBoolean;
  }
  
  public void setWriter(Writer paramWriter) {
    this.writer = paramWriter;
    this.autoFlush = false;
  }
  
  protected boolean shouldEncodeChar(char paramChar) {
    int i = getMaximumAllowedCharacter();
    return (i > 0 && paramChar > i);
  }
  
  public void startCDATA() {
    try {
      this.writer.write("<![CDATA[");
    } catch (IOException iOException) {
      handleException(iOException);
    } 
    if (this.lexicalHandler != null)
      this.lexicalHandler.startCDATA(); 
  }
  
  public void startDTD(String paramString1, String paramString2, String paramString3) {
    this.inDTD = true;
    try {
      writeDocType(paramString1, paramString2, paramString3);
    } catch (IOException iOException) {
      handleException(iOException);
    } 
    if (this.lexicalHandler != null)
      this.lexicalHandler.startDTD(paramString1, paramString2, paramString3); 
  }
  
  public void startDocument() {
    try {
      writeDeclaration();
      super.startDocument();
      return;
    } catch (IOException iOException) {
      handleException(iOException);
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    try {
      this.charsAdded = false;
      writePrintln();
      indent();
      this.writer.write("<");
      this.writer.write(paramString3);
      writeNamespaces();
      writeAttributes(paramAttributes);
      this.writer.write(">");
      this.indentLevel++;
      this.lastOutputNodeType = NodeType.ELEMENT_NODE;
      this.lastElementClosed = false;
      super.startElement(paramString1, paramString2, paramString3, paramAttributes);
      return;
    } catch (IOException iOException) {
      handleException(iOException);
      return;
    } 
  }
  
  public void startEntity(String paramString) {
    try {
      writeEntityRef(paramString);
    } catch (IOException iOException) {
      handleException(iOException);
    } 
    if (this.lexicalHandler != null)
      this.lexicalHandler.startEntity(paramString); 
  }
  
  public void startPrefixMapping(String paramString1, String paramString2) {
    if (this.namespacesMap == null)
      this.namespacesMap = new HashMap<String, String>(); 
    this.namespacesMap.put(paramString1, paramString2);
    super.startPrefixMapping(paramString1, paramString2);
  }
  
  public void unparsedEntityDecl(String paramString1, String paramString2, String paramString3, String paramString4) {
    super.unparsedEntityDecl(paramString1, paramString2, paramString3, paramString4);
  }
  
  public void write(Object paramObject) {
    if (paramObject instanceof Node) {
      write((Node)paramObject);
      return;
    } 
    if (paramObject instanceof String) {
      write((String)paramObject);
      return;
    } 
    if (paramObject instanceof java.util.List) {
      paramObject = paramObject;
      int i = 0;
      int j = paramObject.size();
      while (true) {
        if (i < j) {
          write(paramObject.get(i));
          i++;
          continue;
        } 
        return;
      } 
    } 
    if (paramObject != null)
      throw new IOException("Invalid object: " + paramObject); 
  }
  
  public void write(String paramString) {
    writeString(paramString);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Attribute paramAttribute) {
    writeAttribute(paramAttribute);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(CDATA paramCDATA) {
    writeCDATA(paramCDATA.getText());
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Comment paramComment) {
    writeComment(paramComment.getText());
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Document paramDocument) {
    writeDeclaration();
    if (paramDocument.getDocType() != null) {
      indent();
      writeDocType(paramDocument.getDocType());
    } 
    int i = 0;
    int j = paramDocument.nodeCount();
    while (i < j) {
      writeNode(paramDocument.node(i));
      i++;
    } 
    writePrintln();
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(DocumentType paramDocumentType) {
    writeDocType(paramDocumentType);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Element paramElement) {
    writeElement(paramElement);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Entity paramEntity) {
    writeEntity(paramEntity);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Namespace paramNamespace) {
    writeNamespace(paramNamespace);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Node paramNode) {
    writeNode(paramNode);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(ProcessingInstruction paramProcessingInstruction) {
    writeProcessingInstruction(paramProcessingInstruction);
    if (this.autoFlush)
      flush(); 
  }
  
  public void write(Text paramText) {
    writeString(paramText.getText());
    if (this.autoFlush)
      flush(); 
  }
  
  protected void writeAttribute(Attribute paramAttribute) {
    this.writer.write(" ");
    this.writer.write(paramAttribute.getQualifiedName());
    this.writer.write("=");
    char c = this.format.getAttributeQuoteCharacter();
    this.writer.write(c);
    writeEscapeAttributeEntities(paramAttribute.getValue());
    this.writer.write(c);
    this.lastOutputNodeType = NodeType.ATTRIBUTE_NODE;
  }
  
  protected void writeAttribute(Attributes paramAttributes, int paramInt) {
    char c = this.format.getAttributeQuoteCharacter();
    this.writer.write(" ");
    this.writer.write(paramAttributes.getQName(paramInt));
    this.writer.write("=");
    this.writer.write(c);
    writeEscapeAttributeEntities(paramAttributes.getValue(paramInt));
    this.writer.write(c);
  }
  
  protected void writeAttributes(Element paramElement) {
    int i = 0;
    int j = paramElement.attributeCount();
    while (i < j) {
      String str1;
      Attribute attribute = paramElement.attribute(i);
      Namespace namespace = attribute.getNamespace();
      if (namespace != null && namespace != Namespace.NO_NAMESPACE && namespace != Namespace.XML_NAMESPACE) {
        String str = namespace.getPrefix();
        str = this.namespaceStack.getURI(str);
        if (!namespace.getURI().equals(str)) {
          writeNamespace(namespace);
          this.namespaceStack.push(namespace);
        } 
      } 
      String str2 = attribute.getName();
      if (str2.startsWith("xmlns:")) {
        str2 = str2.substring(6);
        if (this.namespaceStack.getNamespaceForPrefix(str2) == null) {
          str1 = attribute.getValue();
          this.namespaceStack.push(str2, str1);
          writeNamespace(str2, str1);
        } 
      } else if (str2.equals("xmlns")) {
        if (this.namespaceStack.getDefaultNamespace() == null) {
          str1 = str1.getValue();
          this.namespaceStack.push(null, str1);
          writeNamespace(null, str1);
        } 
      } else {
        char c = this.format.getAttributeQuoteCharacter();
        this.writer.write(" ");
        this.writer.write(str1.getQualifiedName());
        this.writer.write("=");
        this.writer.write(c);
        writeEscapeAttributeEntities(str1.getValue());
        this.writer.write(c);
      } 
      i++;
    } 
  }
  
  protected void writeAttributes(Attributes paramAttributes) {
    int i = 0;
    int j = paramAttributes.getLength();
    while (i < j) {
      writeAttribute(paramAttributes, i);
      i++;
    } 
  }
  
  protected void writeCDATA(String paramString) {
    this.writer.write("<![CDATA[");
    if (paramString != null)
      this.writer.write(paramString); 
    this.writer.write("]]>");
    this.lastOutputNodeType = NodeType.CDATA_SECTION_NODE;
  }
  
  protected void writeClose(String paramString) {
    this.writer.write("</");
    this.writer.write(paramString);
    this.writer.write(">");
  }
  
  public void writeClose(Element paramElement) {
    writeClose(paramElement.getQualifiedName());
  }
  
  protected void writeComment(String paramString) {
    if (this.format.isNewlines()) {
      println();
      indent();
    } 
    this.writer.write("<!--");
    this.writer.write(paramString);
    this.writer.write("-->");
    this.lastOutputNodeType = NodeType.COMMENT_NODE;
  }
  
  protected void writeDeclaration() {
    String str = this.format.getEncoding();
    if (!this.format.isSuppressDeclaration()) {
      if (str.equals("UTF8")) {
        this.writer.write("<?xml version=\"1.0\"");
        if (!this.format.isOmitEncoding())
          this.writer.write(" encoding=\"UTF-8\""); 
        this.writer.write("?>");
      } else {
        this.writer.write("<?xml version=\"1.0\"");
        if (!this.format.isOmitEncoding())
          this.writer.write(" encoding=\"" + str + "\""); 
        this.writer.write("?>");
      } 
      if (this.format.isNewLineAfterDeclaration())
        println(); 
    } 
  }
  
  protected void writeDocType(String paramString1, String paramString2, String paramString3) {
    boolean bool2 = false;
    this.writer.write("<!DOCTYPE ");
    this.writer.write(paramString1);
    boolean bool1 = bool2;
    if (paramString2 != null) {
      bool1 = bool2;
      if (!paramString2.equals("")) {
        this.writer.write(" PUBLIC \"");
        this.writer.write(paramString2);
        this.writer.write("\"");
        bool1 = true;
      } 
    } 
    if (paramString3 != null && !paramString3.equals("")) {
      if (!bool1)
        this.writer.write(" SYSTEM"); 
      this.writer.write(" \"");
      this.writer.write(paramString3);
      this.writer.write("\"");
    } 
    this.writer.write(">");
    writePrintln();
  }
  
  protected void writeDocType(DocumentType paramDocumentType) {
    if (paramDocumentType != null) {
      paramDocumentType.write(this.writer);
      writePrintln();
    } 
  }
  
  protected void writeElement(Element paramElement) {
    int j = paramElement.nodeCount();
    String str = paramElement.getQualifiedName();
    writePrintln();
    indent();
    this.writer.write("<");
    this.writer.write(str);
    int k = this.namespaceStack.size();
    Namespace namespace = paramElement.getNamespace();
    if (isNamespaceDeclaration(namespace)) {
      this.namespaceStack.push(namespace);
      writeNamespace(namespace);
    } 
    boolean bool = true;
    for (int i = 0; i < j; i++) {
      Namespace namespace1;
      Node node = paramElement.node(i);
      if (node instanceof Namespace) {
        namespace1 = (Namespace)node;
        if (isNamespaceDeclaration(namespace1)) {
          this.namespaceStack.push(namespace1);
          writeNamespace(namespace1);
        } 
      } else if (namespace1 instanceof Element) {
        bool = false;
      } else if (namespace1 instanceof Comment) {
        bool = false;
      } 
    } 
    writeAttributes(paramElement);
    this.lastOutputNodeType = NodeType.ELEMENT_NODE;
    if (j <= 0) {
      writeEmptyElementClose(str);
    } else {
      this.writer.write(">");
      if (bool) {
        writeElementContent(paramElement);
      } else {
        this.indentLevel++;
        writeElementContent(paramElement);
        this.indentLevel--;
        writePrintln();
        indent();
      } 
      this.writer.write("</");
      this.writer.write(str);
      this.writer.write(">");
    } 
    while (this.namespaceStack.size() > k)
      this.namespaceStack.pop(); 
    this.lastOutputNodeType = NodeType.ELEMENT_NODE;
  }
  
  protected void writeElementContent(Element paramElement) {
    int i = 1;
    int j = 0;
    boolean bool2 = this.format.isTrimText();
    boolean bool3 = this.preserve;
    boolean bool1 = bool2;
    if (bool2) {
      this.preserve = isElementSpacePreserved(paramElement);
      if (!this.preserve) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
    } 
    if (bool1) {
      int m = paramElement.nodeCount();
      j = 0;
      StringBuffer stringBuffer = null;
      Text text = null;
      while (true) {
        if (j < m) {
          Node node1 = paramElement.node(j);
          if (node1 instanceof Text) {
            if (text == null) {
              text = (Text)node1;
            } else {
              StringBuffer stringBuffer1 = stringBuffer;
              if (stringBuffer == null)
                stringBuffer1 = new StringBuffer(text.getText()); 
              stringBuffer1.append(((Text)node1).getText());
              stringBuffer = stringBuffer1;
            } 
          } else {
            if (!i && this.format.isPadText()) {
              byte b;
              if (stringBuffer != null) {
                b = stringBuffer.charAt(0);
              } else if (text != null) {
                b = text.getText().charAt(0);
              } else {
                b = 97;
              } 
              if (Character.isWhitespace(b))
                this.writer.write(" "); 
            } 
            if (text != null) {
              if (stringBuffer != null) {
                writeString(stringBuffer.toString());
                stringBuffer = null;
              } else {
                writeString(text.getText());
              } 
              if (this.format.isPadText()) {
                byte b;
                if (stringBuffer != null) {
                  b = stringBuffer.charAt(stringBuffer.length() - 1);
                } else if (text != null) {
                  String str = text.getText();
                  b = str.charAt(str.length() - 1);
                } else {
                  b = 97;
                } 
                if (Character.isWhitespace(b))
                  this.writer.write(" "); 
              } 
              text = null;
            } 
            writeNode(node1);
            i = 0;
          } 
          j++;
          continue;
        } 
        if (text != null) {
          if (!i && this.format.isPadText()) {
            char c;
            if (stringBuffer != null) {
              c = stringBuffer.charAt(0);
            } else {
              c = text.getText().charAt(0);
            } 
            if (Character.isWhitespace(c))
              this.writer.write(" "); 
          } 
          if (stringBuffer != null) {
            writeString(stringBuffer.toString());
          } else {
            writeString(text.getText());
          } 
        } 
        this.preserve = bool3;
        return;
      } 
    } 
    int k = paramElement.nodeCount();
    Node node = null;
    i = j;
    while (true) {
      if (i < k) {
        Node node1 = paramElement.node(i);
        if (node1 instanceof Text) {
          writeNode(node1);
          node = node1;
        } else {
          if (node != null && this.format.isPadText()) {
            String str = node.getText();
            if (Character.isWhitespace(str.charAt(str.length() - 1)))
              this.writer.write(" "); 
          } 
          writeNode(node1);
          node = null;
        } 
        i++;
        continue;
      } 
      this.preserve = bool3;
      return;
    } 
  }
  
  protected void writeEmptyElementClose(String paramString) {
    if (!this.format.isExpandEmptyElements()) {
      this.writer.write("/>");
      return;
    } 
    this.writer.write("></");
    this.writer.write(paramString);
    this.writer.write(">");
  }
  
  protected void writeEntity(Entity paramEntity) {
    if (!resolveEntityRefs()) {
      writeEntityRef(paramEntity.getName());
      return;
    } 
    this.writer.write(paramEntity.getText());
  }
  
  protected void writeEntityRef(String paramString) {
    this.writer.write("&");
    this.writer.write(paramString);
    this.writer.write(";");
    this.lastOutputNodeType = NodeType.ENTITY_REFERENCE_NODE;
  }
  
  protected void writeEscapeAttributeEntities(String paramString) {
    if (paramString != null) {
      paramString = escapeAttributeEntities(paramString);
      this.writer.write(paramString);
    } 
  }
  
  protected void writeNamespace(String paramString1, String paramString2) {
    if (paramString1 != null && paramString1.length() > 0) {
      this.writer.write(" xmlns:");
      this.writer.write(paramString1);
      this.writer.write("=\"");
    } else {
      this.writer.write(" xmlns=\"");
    } 
    this.writer.write(paramString2);
    this.writer.write("\"");
  }
  
  protected void writeNamespace(Namespace paramNamespace) {
    if (paramNamespace != null)
      writeNamespace(paramNamespace.getPrefix(), paramNamespace.getURI()); 
  }
  
  protected void writeNamespaces() {
    if (this.namespacesMap != null) {
      for (Map.Entry<String, String> entry : this.namespacesMap.entrySet())
        writeNamespace((String)entry.getKey(), (String)entry.getValue()); 
      this.namespacesMap = null;
    } 
  }
  
  protected void writeNode(Node paramNode) {
    NodeType nodeType = paramNode.getNodeTypeEnum();
    switch (XMLWriter$1.$SwitchMap$org$dom4j$NodeType[nodeType.ordinal()]) {
      default:
        throw new IOException("Invalid node type: " + paramNode);
      case 1:
        writeElement((Element)paramNode);
      case 10:
        return;
      case 2:
        writeAttribute((Attribute)paramNode);
        return;
      case 3:
        writeNodeText(paramNode);
        return;
      case 4:
        writeCDATA(paramNode.getText());
        return;
      case 5:
        writeEntity((Entity)paramNode);
        return;
      case 6:
        writeProcessingInstruction((ProcessingInstruction)paramNode);
        return;
      case 7:
        writeComment(paramNode.getText());
        return;
      case 8:
        write((Document)paramNode);
        return;
      case 9:
        break;
    } 
    writeDocType((DocumentType)paramNode);
  }
  
  protected void writeNodeText(Node paramNode) {
    String str = paramNode.getText();
    if (str != null && str.length() > 0) {
      String str1 = str;
      if (this.escapeText)
        str1 = escapeElementEntities(str); 
      this.lastOutputNodeType = NodeType.TEXT_NODE;
      this.writer.write(str1);
    } 
  }
  
  public void writeOpen(Element paramElement) {
    this.writer.write("<");
    this.writer.write(paramElement.getQualifiedName());
    writeAttributes(paramElement);
    this.writer.write(">");
  }
  
  protected void writePrintln() {
    if (this.format.isNewlines())
      this.writer.write(this.format.getLineSeparator()); 
  }
  
  protected void writeProcessingInstruction(ProcessingInstruction paramProcessingInstruction) {
    this.writer.write("<?");
    this.writer.write(paramProcessingInstruction.getName());
    this.writer.write(" ");
    this.writer.write(paramProcessingInstruction.getText());
    this.writer.write("?>");
    writePrintln();
    this.lastOutputNodeType = NodeType.PROCESSING_INSTRUCTION_NODE;
  }
  
  protected void writeString(String paramString) {
    if (paramString != null && paramString.length() > 0) {
      String str = paramString;
      if (this.escapeText)
        str = escapeElementEntities(paramString); 
      if (this.format.isTrimText()) {
        boolean bool = true;
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
          str = stringTokenizer.nextToken();
          if (bool) {
            boolean bool1 = false;
            bool = bool1;
            if (this.lastOutputNodeType == NodeType.TEXT_NODE) {
              this.writer.write(" ");
              bool = bool1;
            } 
          } else {
            this.writer.write(" ");
          } 
          this.writer.write(str);
          this.lastOutputNodeType = NodeType.TEXT_NODE;
        } 
      } else {
        this.lastOutputNodeType = NodeType.TEXT_NODE;
        this.writer.write(str);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\XMLWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */