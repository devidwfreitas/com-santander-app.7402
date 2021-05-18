.class public Ljww;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Ljxf;

.field private c:Ljwx;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Ljww;->b:Ljxf;

    .line 25
    new-instance v0, Ljwx;

    invoke-direct {v0, p0}, Ljwx;-><init>(Ljww;)V

    iput-object v0, p0, Ljww;->c:Ljwx;

    .line 29
    return-void
.end method

.method static synthetic a(Ljww;)Ljxf;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Ljww;->b:Ljxf;

    return-object v0
.end method


# virtual methods
.method public a()Ljxf;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Ljww;->b:Ljxf;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Ljxf;

    invoke-direct {v0}, Ljxf;-><init>()V

    iput-object v0, p0, Ljww;->b:Ljxf;

    .line 41
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 44
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljww;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 45
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Ljww;->c:Ljwx;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljww;->b:Ljxf;

    goto :goto_0
.end method
