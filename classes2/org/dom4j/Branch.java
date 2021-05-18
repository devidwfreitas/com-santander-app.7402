package org.dom4j;

import java.util.Iterator;
import java.util.List;

public interface Branch extends Iterable<Node>, Node {
  void add(Comment paramComment);
  
  void add(Element paramElement);
  
  void add(Node paramNode);
  
  void add(ProcessingInstruction paramProcessingInstruction);
  
  Element addElement(String paramString);
  
  Element addElement(String paramString1, String paramString2);
  
  Element addElement(QName paramQName);
  
  void appendContent(Branch paramBranch);
  
  void clearContent();
  
  List<Node> content();
  
  Element elementByID(String paramString);
  
  int indexOf(Node paramNode);
  
  Iterator<Node> iterator();
  
  Node node(int paramInt);
  
  int nodeCount();
  
  Iterator<Node> nodeIterator();
  
  void normalize();
  
  ProcessingInstruction processingInstruction(String paramString);
  
  List<ProcessingInstruction> processingInstructions();
  
  List<ProcessingInstruction> processingInstructions(String paramString);
  
  boolean remove(Comment paramComment);
  
  boolean remove(Element paramElement);
  
  boolean remove(Node paramNode);
  
  boolean remove(ProcessingInstruction paramProcessingInstruction);
  
  boolean removeProcessingInstruction(String paramString);
  
  void setContent(List<Node> paramList);
  
  void setProcessingInstructions(List<ProcessingInstruction> paramList);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\dom4j\Branch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */