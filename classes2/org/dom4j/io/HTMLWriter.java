package org.dom4j.io;

import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Entity;
import org.dom4j.NodeType;

public class HTMLWriter extends XMLWriter {
  protected static final OutputFormat DEFAULT_HTML_FORMAT;
  
  protected static final HashSet<String> DEFAULT_PREFORMATTED_TAGS;
  
  private static String lineSeparator = System.getProperty("line.separator");
  
  private LinkedList<HTMLWriter$FormatState> formatStack = new LinkedList<HTMLWriter$FormatState>();
  
  private String lastText = "";
  
  private int newLineAfterNTags = -1;
  
  private HashSet<String> omitElementCloseSet;
  
  private HashSet<String> preformattedTags = DEFAULT_PREFORMATTED_TAGS;
  
  private int tagsOuput = 0;
  
  static {
    DEFAULT_PREFORMATTED_TAGS = new HashSet<String>();
    DEFAULT_PREFORMATTED_TAGS.add("PRE");
    DEFAULT_PREFORMATTED_TAGS.add("SCRIPT");
    DEFAULT_PREFORMATTED_TAGS.add("STYLE");
    DEFAULT_PREFORMATTED_TAGS.add("TEXTAREA");
    DEFAULT_HTML_FORMAT = new OutputFormat("  ", true);
    DEFAULT_HTML_FORMAT.setTrimText(true);
    DEFAULT_HTML_FORMAT.setSuppressDeclaration(true);
  }
  
  public HTMLWriter() {
    super(DEFAULT_HTML_FORMAT);
  }
  
  public HTMLWriter(OutputStream paramOutputStream) {
    super(paramOutputStream, DEFAULT_HTML_FORMAT);
  }
  
  public HTMLWriter(OutputStream paramOutputStream, OutputFormat paramOutputFormat) {
    super(paramOutputStream, paramOutputFormat);
  }
  
  public HTMLWriter(Writer paramWriter) {
    super(paramWriter, DEFAULT_HTML_FORMAT);
  }
  
  public HTMLWriter(Writer paramWriter, OutputFormat paramOutputFormat) {
    super(paramWriter, paramOutputFormat);
  }
  
  public HTMLWriter(OutputFormat paramOutputFormat) {
    super(paramOutputFormat);
  }
  
  private HashSet internalGetOmitElementCloseSet() {
    if (this.omitElementCloseSet == null) {
      this.omitElementCloseSet = new HashSet<String>();
      loadOmitElementCloseSet(this.omitElementCloseSet);
    } 
    return this.omitElementCloseSet;
  }
  
  private String justSpaces(String paramString) {
    int j = paramString.length();
    StringBuffer stringBuffer = new StringBuffer(j);
    for (int i = 0; i < j; i++) {
      char c = paramString.charAt(i);
      switch (c) {
        default:
          stringBuffer.append(c);
          break;
        case '\n':
        case '\r':
          break;
      } 
    } 
    return stringBuffer.toString();
  }
  
  private void lazyInitNewLinesAfterNTags() {
    if (getOutputFormat().isNewlines()) {
      this.newLineAfterNTags = 0;
      return;
    } 
    this.newLineAfterNTags = getOutputFormat().getNewLineAfterNTags();
  }
  
  public static String prettyPrintHTML(String paramString) {
    return prettyPrintHTML(paramString, true, true, false, true);
  }
  
  public static String prettyPrintHTML(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {
    StringWriter stringWriter = new StringWriter();
    OutputFormat outputFormat = OutputFormat.createPrettyPrint();
    outputFormat.setNewlines(paramBoolean1);
    outputFormat.setTrimText(paramBoolean2);
    outputFormat.setXHTML(paramBoolean3);
    outputFormat.setExpandEmptyElements(paramBoolean4);
    HTMLWriter hTMLWriter = new HTMLWriter(stringWriter, outputFormat);
    hTMLWriter.write(DocumentHelper.parseText(paramString));
    hTMLWriter.flush();
    return stringWriter.toString();
  }
  
  public static String prettyPrintXHTML(String paramString) {
    return prettyPrintHTML(paramString, true, true, true, false);
  }
  
  public void endCDATA() {}
  
  public Set getOmitElementCloseSet() {
    return (Set)internalGetOmitElementCloseSet().clone();
  }
  
  public Set<String> getPreformattedTags() {
    return Collections.unmodifiableSet(this.preformattedTags);
  }
  
  public boolean isPreformattedTag(String paramString) {
    return (this.preformattedTags != null && this.preformattedTags.contains(paramString.toUpperCase()));
  }
  
  protected void loadOmitElementCloseSet(Set<String> paramSet) {
    paramSet.add("AREA");
    paramSet.add("BASE");
    paramSet.add("BR");
    paramSet.add("COL");
    paramSet.add("HR");
    paramSet.add("IMG");
    paramSet.add("INPUT");
    paramSet.add("LINK");
    paramSet.add("META");
    paramSet.add("P");
    paramSet.add("PARAM");
  }
  
  protected boolean omitElementClose(String paramString) {
    return internalGetOmitElementCloseSet().contains(paramString.toUpperCase());
  }
  
  public void setOmitElementCloseSet(Set<String> paramSet) {
    this.omitElementCloseSet = new HashSet<String>();
    if (paramSet != null) {
      this.omitElementCloseSet = new HashSet<String>();
      for (String str : paramSet) {
        if (str != null)
          this.omitElementCloseSet.add(str.toUpperCase()); 
      } 
    } 
  }
  
  public void setPreformattedTags(Set<String> paramSet) {
    this.preformattedTags = new HashSet<String>();
    if (paramSet != null)
      for (String str : paramSet) {
        if (str != null)
          this.preformattedTags.add(str.toUpperCase()); 
      }  
  }
  
  public void startCDATA() {}
  
  protected void writeCDATA(String paramString) {
    if (getOutputFormat().isXHTML()) {
      super.writeCDATA(paramString);
    } else {
      this.writer.write(paramString);
    } 
    this.lastOutputNodeType = NodeType.CDATA_SECTION_NODE;
  }
  
  protected void writeClose(String paramString) {
    if (!omitElementClose(paramString))
      super.writeClose(paramString); 
  }
  
  protected void writeDeclaration() {}
  
  protected void writeElement(Element paramElement) {
    if (this.newLineAfterNTags == -1)
      lazyInitNewLinesAfterNTags(); 
    if (this.newLineAfterNTags > 0 && this.tagsOuput > 0 && this.tagsOuput % this.newLineAfterNTags == 0)
      this.writer.write(lineSeparator); 
    this.tagsOuput++;
    String str1 = paramElement.getQualifiedName();
    String str2 = this.lastText;
    paramElement.nodeCount();
    if (isPreformattedTag(str1)) {
      OutputFormat outputFormat = getOutputFormat();
      boolean bool1 = outputFormat.isNewlines();
      boolean bool2 = outputFormat.isTrimText();
      String str = outputFormat.getIndent();
      this.formatStack.addFirst(new HTMLWriter$FormatState(this, bool1, bool2, str));
      try {
        writePrintln();
        if (str2.trim().length() == 0 && str != null && str.length() > 0)
          this.writer.write(justSpaces(str2)); 
        outputFormat.setNewlines(false);
        outputFormat.setTrimText(false);
        outputFormat.setIndent("");
        super.writeElement(paramElement);
        return;
      } finally {
        HTMLWriter$FormatState hTMLWriter$FormatState = this.formatStack.poll();
        outputFormat.setNewlines(hTMLWriter$FormatState.isNewlines());
        outputFormat.setTrimText(hTMLWriter$FormatState.isTrimText());
        outputFormat.setIndent(hTMLWriter$FormatState.getIndent());
      } 
    } 
    super.writeElement(paramElement);
  }
  
  protected void writeEmptyElementClose(String paramString) {
    if (getOutputFormat().isXHTML()) {
      if (omitElementClose(paramString)) {
        this.writer.write(" />");
        return;
      } 
      super.writeEmptyElementClose(paramString);
      return;
    } 
    if (omitElementClose(paramString)) {
      this.writer.write(">");
      return;
    } 
    super.writeEmptyElementClose(paramString);
  }
  
  protected void writeEntity(Entity paramEntity) {
    this.writer.write(paramEntity.getText());
    this.lastOutputNodeType = NodeType.ENTITY_REFERENCE_NODE;
  }
  
  protected void writeString(String paramString) {
    if (paramString.equals("\n")) {
      if (!this.formatStack.isEmpty())
        super.writeString(lineSeparator); 
      return;
    } 
    this.lastText = paramString;
    if (this.formatStack.isEmpty()) {
      super.writeString(paramString.trim());
      return;
    } 
    super.writeString(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\io\HTMLWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */