.class public Ljxl;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfsy;

.field private c:Ljxm;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl;->b:Lfsy;

    .line 28
    new-instance v0, Ljxm;

    invoke-direct {v0, p0}, Ljxm;-><init>(Ljxl;)V

    iput-object v0, p0, Ljxl;->c:Ljxm;

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lfsy;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljxl;->b:Lfsy;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lfsy;

    invoke-direct {v0}, Lfsy;-><init>()V

    iput-object v0, p0, Ljxl;->b:Lfsy;

    .line 45
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 48
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljxl;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 49
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Ljxl;->c:Ljxm;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljxl;->b:Lfsy;

    goto :goto_0
.end method
