.class public Ljzn;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfui;

.field private c:Lfue;

.field private d:Ljzo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 27
    iput-object v0, p0, Ljzn;->b:Lfui;

    .line 28
    iput-object v0, p0, Ljzn;->c:Lfue;

    .line 29
    new-instance v0, Ljzo;

    invoke-direct {v0, p0}, Ljzo;-><init>(Ljzn;)V

    iput-object v0, p0, Ljzn;->d:Ljzo;

    .line 33
    return-void
.end method

.method static synthetic a(Ljzn;)Lfue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljzn;->c:Lfue;

    return-object v0
.end method

.method static synthetic a(Ljzn;Lfue;)Lfue;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Ljzn;->c:Lfue;

    return-object p1
.end method

.method static synthetic b(Ljzn;)Lfui;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljzn;->b:Lfui;

    return-object v0
.end method


# virtual methods
.method public a()Lfui;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ljzn;->b:Lfui;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lfui;

    invoke-direct {v0}, Lfui;-><init>()V

    iput-object v0, p0, Ljzn;->b:Lfui;

    .line 44
    iget-object v0, p0, Ljzn;->b:Lfui;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfui;->a(Ljava/util/Vector;)V

    .line 46
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljzn;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 50
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Ljzn;->d:Ljzo;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljzn;->b:Lfui;

    goto :goto_0
.end method
