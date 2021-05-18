.class public Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;
.super Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/commons/exec/environment/DefaultProcessingEnvironment;-><init>()V

    return-void
.end method

.method private addVMSenvironmentVariables(Ljava/util/Map;Ljava/io/BufferedReader;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    const-string v1, "=="

    .line 76
    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 77
    if-lez v1, :cond_0

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "=="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected createProcEnvironment()Ljava/util/Map;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;->runProcEnvCommand()Ljava/io/BufferedReader;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;->addVMSenvironmentVariables(Ljava/util/Map;Ljava/io/BufferedReader;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/exec/environment/OpenVmsProcessingEnvironment;->procEnvironment:Ljava/util/Map;

    return-object v0
.end method

.method protected getProcEnvCommand()Lorg/apache/commons/exec/CommandLine;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/exec/CommandLine;

    const-string v1, "show"

    invoke-direct {v0, v1}, Lorg/apache/commons/exec/CommandLine;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "symbol/global"

    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 57
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/apache/commons/exec/CommandLine;->addArgument(Ljava/lang/String;)Lorg/apache/commons/exec/CommandLine;

    .line 58
    return-object v0
.end method
