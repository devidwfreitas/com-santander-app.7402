.class Lorg/simpleframework/xml/core/ExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final label:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;Lorg/simpleframework/xml/stream/Format;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 73
    iput-object p3, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->format:Lorg/simpleframework/xml/stream/Format;

    .line 74
    iput-object p2, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->label:Ljava/lang/annotation/Annotation;

    .line 75
    return-void
.end method

.method private getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;
    .locals 4

    .prologue
    .line 117
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementUnion;

    const-class v2, Lorg/simpleframework/xml/core/ExtractorFactory$ElementExtractor;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 124
    :goto_0
    return-object v0

    .line 120
    :cond_0
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementListUnion;

    const-class v2, Lorg/simpleframework/xml/core/ExtractorFactory$ElementListExtractor;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 123
    :cond_1
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;

    const-class v1, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v2, Lorg/simpleframework/xml/core/ExtractorFactory$ElementMapExtractor;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Annotation %s is not a union"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private getInstance(Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ExtractorFactory;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;->access$000(Lorg/simpleframework/xml/core/ExtractorFactory$ExtractorBuilder;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 104
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInstance()Lorg/simpleframework/xml/core/Extractor;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/ExtractorFactory;->label:Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ExtractorFactory;->getInstance(Ljava/lang/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Extractor;

    return-object v0
.end method
