.class public Lhes;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lhel;

.field private c:Lhet;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lhes;->b:Lhel;

    .line 27
    new-instance v0, Lhet;

    invoke-direct {v0, p0}, Lhet;-><init>(Lhes;)V

    iput-object v0, p0, Lhes;->c:Lhet;

    .line 32
    return-void
.end method

.method static synthetic a(Lhes;)Lhel;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lhes;->b:Lhel;

    return-object v0
.end method


# virtual methods
.method public a()Lhel;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lhes;->b:Lhel;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Lhel;

    invoke-direct {v0}, Lhel;-><init>()V

    iput-object v0, p0, Lhes;->b:Lhel;

    .line 40
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lhes;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 44
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lhes;->c:Lhet;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lhes;->b:Lhel;

    goto :goto_0
.end method
