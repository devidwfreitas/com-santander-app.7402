.class public Ljxp;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lftd;

.field private c:Ljxq;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Ljxp;->b:Lftd;

    .line 28
    new-instance v0, Ljxq;

    invoke-direct {v0, p0}, Ljxq;-><init>(Ljxp;)V

    iput-object v0, p0, Ljxp;->c:Ljxq;

    .line 32
    return-void
.end method

.method static synthetic a(Ljxp;)Lftd;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljxp;->b:Lftd;

    return-object v0
.end method


# virtual methods
.method public a()Lftd;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ljxp;->b:Lftd;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lftd;

    invoke-direct {v0}, Lftd;-><init>()V

    iput-object v0, p0, Ljxp;->b:Lftd;

    .line 46
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljxp;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 50
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Ljxp;->c:Ljxq;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Ljxp;->b:Lftd;

    goto :goto_0
.end method
