.class public interface abstract Lorg/dom4j/Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract accept(Lorg/dom4j/Visitor;)V
.end method

.method public abstract asXML()Ljava/lang/String;
.end method

.method public abstract asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;
.end method

.method public abstract detach()Lorg/dom4j/Node;
.end method

.method public abstract getDocument()Lorg/dom4j/Document;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNodeType()S
.end method

.method public abstract getNodeTypeEnum()Lorg/dom4j/NodeType;
.end method

.method public abstract getNodeTypeName()Ljava/lang/String;
.end method

.method public abstract getParent()Lorg/dom4j/Element;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPath(Lorg/dom4j/Element;)Ljava/lang/String;
.end method

.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getUniquePath()Ljava/lang/String;
.end method

.method public abstract getUniquePath(Lorg/dom4j/Element;)Ljava/lang/String;
.end method

.method public abstract hasContent()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract matches(Ljava/lang/String;)Z
.end method

.method public abstract numberValueOf(Ljava/lang/String;)Ljava/lang/Number;
.end method

.method public abstract selectNodes(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectNodes(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectNodes(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<+",
            "Lorg/dom4j/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;
.end method

.method public abstract setDocument(Lorg/dom4j/Document;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setParent(Lorg/dom4j/Element;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract supportsParent()Z
.end method

.method public abstract valueOf(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract write(Ljava/io/Writer;)V
.end method
