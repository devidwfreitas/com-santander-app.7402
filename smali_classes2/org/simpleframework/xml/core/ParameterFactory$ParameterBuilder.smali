.class Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final entry:Ljava/lang/Class;

.field private final label:Ljava/lang/Class;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    .line 216
    iput-object p3, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    .line 217
    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    .line 218
    return-void
.end method

.method private varargs getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->entry:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->label:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0
.end method

.method public getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/reflect/Constructor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-class v2, Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getConstructor(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/reflect/Constructor;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
