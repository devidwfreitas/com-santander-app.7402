.class public Lorg/dom4j/io/DocumentSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "SourceFile"


# static fields
.field public static final DOM4J_FEATURE:Ljava/lang/String; = "http://org.dom4j.io.DoucmentSource/feature"


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 39
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 56
    invoke-virtual {p0, p1}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 39
    new-instance v0, Lorg/dom4j/io/SAXWriter;

    invoke-direct {v0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 47
    invoke-interface {p1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/DocumentSource;->setDocument(Lorg/dom4j/Document;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/dom4j/Document;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/dom4j/io/DocumentSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/dom4j/io/DocumentInputSource;

    .line 69
    invoke-virtual {v0}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v0, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 79
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1

    .prologue
    .line 102
    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    invoke-super {p0, p1}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2

    .prologue
    .line 117
    instance-of v0, p1, Lorg/dom4j/io/SAXWriter;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lorg/dom4j/io/SAXWriter;

    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    instance-of v0, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, Lorg/xml/sax/XMLFilter;

    .line 123
    :goto_1
    invoke-interface {p1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object p1, v0

    .line 130
    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 134
    iput-object p1, p0, Lorg/dom4j/io/DocumentSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
