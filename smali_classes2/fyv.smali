.class public Lfyv;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfyj;

.field private c:Lfyw;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lfyv;->b:Lfyj;

    .line 27
    new-instance v0, Lfyw;

    invoke-direct {v0, p0}, Lfyw;-><init>(Lfyv;)V

    iput-object v0, p0, Lfyv;->c:Lfyw;

    .line 31
    return-void
.end method

.method static synthetic a(Lfyv;)Lfyj;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lfyv;->b:Lfyj;

    return-object v0
.end method

.method static synthetic a(Lfyv;Lfyj;)Lfyj;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lfyv;->b:Lfyj;

    return-object p1
.end method


# virtual methods
.method public a()Lfyj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lfyv;->b:Lfyj;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 44
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lfyv;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 45
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lfyv;->c:Lfyw;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lfyv;->b:Lfyj;

    goto :goto_0
.end method
