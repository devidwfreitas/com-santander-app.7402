.class public Ljzx;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvh;

.field private c:Ljzy;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ljzx;->b:Lfvh;

    .line 26
    new-instance v0, Ljzy;

    invoke-direct {v0, p0}, Ljzy;-><init>(Ljzx;)V

    iput-object v0, p0, Ljzx;->c:Ljzy;

    .line 30
    return-void
.end method

.method static synthetic a(Ljzx;)Lfvh;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljzx;->b:Lfvh;

    return-object v0
.end method


# virtual methods
.method public a()Lfvh;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljzx;->b:Lfvh;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    new-instance v0, Lfvh;

    invoke-direct {v0}, Lfvh;-><init>()V

    iput-object v0, p0, Ljzx;->b:Lfvh;

    .line 42
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 45
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljzx;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 46
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Ljzx;->c:Ljzy;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljzx;->b:Lfvh;

    goto :goto_0
.end method