package org.simpleframework.xml.stream;

import java.io.Writer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class NodeWriter {
  private final Set active;
  
  private final OutputStack stack;
  
  private final boolean verbose;
  
  private final Formatter writer;
  
  public NodeWriter(Writer paramWriter) {
    this(paramWriter, new Format());
  }
  
  public NodeWriter(Writer paramWriter, Format paramFormat) {
    this(paramWriter, paramFormat, false);
  }
  
  private NodeWriter(Writer paramWriter, Format paramFormat, boolean paramBoolean) {
    this.writer = new Formatter(paramWriter, paramFormat);
    this.active = new HashSet();
    this.stack = new OutputStack(this.active);
    this.verbose = paramBoolean;
  }
  
  private void writeAttributes(OutputNode paramOutputNode) {
    NodeMap<OutputNode> nodeMap = paramOutputNode.getAttributes();
    for (String str1 : nodeMap) {
      OutputNode outputNode = nodeMap.get(str1);
      String str2 = outputNode.getValue();
      String str3 = outputNode.getPrefix(this.verbose);
      this.writer.writeAttribute(str1, str2, str3);
    } 
    this.active.remove(paramOutputNode);
  }
  
  private void writeComment(OutputNode paramOutputNode) {
    String str = paramOutputNode.getComment();
    if (str != null)
      this.writer.writeComment(str); 
  }
  
  private void writeEnd(OutputNode paramOutputNode) {
    String str1 = paramOutputNode.getName();
    String str2 = paramOutputNode.getPrefix(this.verbose);
    if (paramOutputNode.getValue() != null)
      writeValue(paramOutputNode); 
    if (str1 != null) {
      this.writer.writeEnd(str1, str2);
      this.writer.flush();
    } 
  }
  
  private void writeName(OutputNode paramOutputNode) {
    String str2 = paramOutputNode.getPrefix(this.verbose);
    String str1 = paramOutputNode.getName();
    if (str1 != null)
      this.writer.writeStart(str1, str2); 
  }
  
  private void writeNamespaces(OutputNode paramOutputNode) {
    NamespaceMap namespaceMap = paramOutputNode.getNamespaces();
    for (String str1 : namespaceMap) {
      String str2 = namespaceMap.getPrefix(str1);
      this.writer.writeNamespace(str1, str2);
    } 
  }
  
  private OutputNode writeStart(OutputNode paramOutputNode, String paramString) {
    paramOutputNode = new OutputElement(paramOutputNode, this, paramString);
    if (paramString == null)
      throw new NodeException("Can not have a null name"); 
    return this.stack.push(paramOutputNode);
  }
  
  private void writeStart(OutputNode paramOutputNode) {
    writeComment(paramOutputNode);
    writeName(paramOutputNode);
    writeAttributes(paramOutputNode);
    writeNamespaces(paramOutputNode);
  }
  
  private void writeValue(OutputNode paramOutputNode) {
    Mode mode = paramOutputNode.getMode();
    String str = paramOutputNode.getValue();
    if (str != null) {
      Iterator<OutputNode> iterator = this.stack.iterator();
      while (true) {
        if (iterator.hasNext()) {
          OutputNode outputNode = iterator.next();
          if (mode == Mode.INHERIT) {
            mode = outputNode.getMode();
            continue;
          } 
        } 
        this.writer.writeText(str, mode);
        paramOutputNode.setValue((String)null);
        return;
      } 
    } 
    paramOutputNode.setValue((String)null);
  }
  
  public void commit(OutputNode paramOutputNode) {
    if (this.stack.contains(paramOutputNode)) {
      OutputNode outputNode = this.stack.top();
      if (!isCommitted(outputNode))
        writeStart(outputNode); 
      while (this.stack.top() != paramOutputNode)
        writeEnd(this.stack.pop()); 
      writeEnd(paramOutputNode);
      this.stack.pop();
    } 
  }
  
  public boolean isCommitted(OutputNode paramOutputNode) {
    return !this.active.contains(paramOutputNode);
  }
  
  public boolean isRoot(OutputNode paramOutputNode) {
    return (this.stack.bottom() == paramOutputNode);
  }
  
  public void remove(OutputNode paramOutputNode) {
    if (this.stack.top() != paramOutputNode)
      throw new NodeException("Cannot remove node"); 
    this.stack.pop();
  }
  
  public OutputNode writeElement(OutputNode paramOutputNode, String paramString) {
    if (this.stack.isEmpty())
      return writeStart(paramOutputNode, paramString); 
    if (this.stack.contains(paramOutputNode)) {
      OutputNode outputNode = this.stack.top();
      if (!isCommitted(outputNode))
        writeStart(outputNode); 
      while (this.stack.top() != paramOutputNode)
        writeEnd(this.stack.pop()); 
      if (!this.stack.isEmpty())
        writeValue(paramOutputNode); 
      return writeStart(paramOutputNode, paramString);
    } 
    return null;
  }
  
  public OutputNode writeRoot() {
    OutputDocument outputDocument = new OutputDocument(this, this.stack);
    if (this.stack.isEmpty())
      this.writer.writeProlog(); 
    return outputDocument;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\NodeWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */