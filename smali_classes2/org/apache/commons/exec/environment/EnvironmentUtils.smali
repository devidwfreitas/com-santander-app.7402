.class public Lorg/apache/commons/exec/environment/EnvironmentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PROCESSING_ENVIRONMENT_IMPLEMENTATION:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lorg/apache/commons/exec/OS;->isFamilyOpenVms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;

    invoke-direct {v0}, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;-><init>()V

    sput-object v0, Lorg/apache/commons/exec/environment/EnvironmentUtils;->PROCESSING_ENVIRONMENT_IMPLEMENTATION:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v0, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;

    invoke-direct {v0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;-><init>()V

    sput-object v0, Lorg/apache/commons/exec/environment/EnvironmentUtils;->PROCESSING_ENVIRONMENT_IMPLEMENTATION:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static addVariableToEnvironment(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 93
    invoke-static {p1}, Lorg/apache/commons/exec/environment/EnvironmentUtils;->parseEnvironmentVariable(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static getProcEnvironment()Ljava/util/Map;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/apache/commons/exec/environment/EnvironmentUtils;->PROCESSING_ENVIRONMENT_IMPLEMENTATION:Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;

    invoke-virtual {v0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;->getProcEnvironment()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static parseEnvironmentVariable(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Environment variable for this platform must contain an equals sign (\'=\')"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 114
    const/4 v2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 116
    return-object v1
.end method

.method public static toStrings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 68
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 69
    goto :goto_0
.end method
