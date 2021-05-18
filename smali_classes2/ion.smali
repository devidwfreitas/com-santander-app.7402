.class public Lion;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Liog;

.field private c:Lioo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lion;->b:Liog;

    .line 26
    new-instance v0, Lioo;

    invoke-direct {v0, p0}, Lioo;-><init>(Lion;)V

    iput-object v0, p0, Lion;->c:Lioo;

    .line 30
    return-void
.end method

.method static synthetic a(Lion;)Liog;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lion;->b:Liog;

    return-object v0
.end method


# virtual methods
.method public a()Liog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lion;->b:Liog;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Liog;

    invoke-direct {v0}, Liog;-><init>()V

    iput-object v0, p0, Lion;->b:Liog;

    .line 40
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lion;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 44
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lion;->c:Lioo;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lion;->b:Liog;

    goto :goto_0
.end method
