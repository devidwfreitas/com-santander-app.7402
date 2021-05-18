.class public Lorg/dom4j/jaxb/JAXBWriter;
.super Lorg/dom4j/jaxb/JAXBSupport;
.source "SourceFile"


# instance fields
.field private outputFormat:Lorg/dom4j/io/OutputFormat;

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/dom4j/io/OutputFormat;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 86
    iput-object p3, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/io/OutputFormat;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 57
    return-void
.end method

.method private getWriter()Lorg/dom4j/io/XMLWriter;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0

    .line 232
    :cond_1
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v0}, Lorg/dom4j/io/XMLWriter;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    goto :goto_0
.end method


# virtual methods
.method public endDocument()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 150
    return-void
.end method

.method public getOutputFormat()Lorg/dom4j/io/OutputFormat;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBWriter;->outputFormat:Lorg/dom4j/io/OutputFormat;

    return-object v0
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 107
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 118
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setWriter(Ljava/io/Writer;)V

    .line 128
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->startDocument()V

    .line 139
    return-void
.end method

.method public write(Ljavax/xml/bind/Element;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/dom4j/jaxb/JAXBWriter;->marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 164
    return-void
.end method

.method public writeClose(Ljavax/xml/bind/Element;)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/dom4j/jaxb/JAXBWriter;->marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->writeClose(Lorg/dom4j/Element;)V

    .line 179
    return-void
.end method

.method public writeCloseElement(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->writeClose(Lorg/dom4j/Element;)V

    .line 214
    return-void
.end method

.method public writeElement(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 203
    return-void
.end method

.method public writeOpen(Ljavax/xml/bind/Element;)V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/dom4j/jaxb/JAXBWriter;->marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->writeOpen(Lorg/dom4j/Element;)V

    .line 193
    return-void
.end method

.method public writeOpenElement(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBWriter;->getWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->writeOpen(Lorg/dom4j/Element;)V

    .line 225
    return-void
.end method
