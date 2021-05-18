.class public Lte;
.super Labw;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ltj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Labw;-><init>()V

    .line 33
    iput-object p1, p0, Lte;->b:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lte;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lte;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lte;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lte;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lte;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lte;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ltj;)V
    .locals 4

    .prologue
    .line 119
    iput-object p2, p0, Lte;->c:Ltj;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labq;->USER_INFO:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&segmentCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Labq;->HOLIDAYS:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lte;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v3, Lth;

    invoke-direct {v3, p0, v1, p2}, Lth;-><init>(Lte;Ljava/lang/String;Ltj;)V

    invoke-virtual {v2, v0, v3}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lte;->c:Ltj;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ltj;->a(Laby;)V

    goto :goto_0
.end method

.method public a(Ltj;)V
    .locals 4

    .prologue
    .line 38
    iput-object p1, p0, Lte;->c:Ltj;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labq;->SUB_DETALHE_INVESTIMENTO:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&flagOnlySavingsAccount=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v1, Labq;->PORTIFOLIO:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, ""

    .line 44
    const-string v2, ""

    .line 45
    sget-boolean v2, Lte;->a:Z

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lte;->b()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 53
    invoke-virtual {p0, v0, v2, v3}, Lte;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Ltf;

    invoke-direct {v2, p0, p1}, Ltf;-><init>(Lte;Ltj;)V

    .line 52
    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 49
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lte;->c:Ltj;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ltj;->a(Laby;)V

    goto :goto_1
.end method

.method public b(Ltj;)V
    .locals 4

    .prologue
    .line 85
    iput-object p1, p0, Lte;->c:Ltj;

    .line 89
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v0

    invoke-virtual {v0}, Labp;->a()Lje;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Labq;->SUB_DETALHE_INVESTIMENTO:Labq;

    .line 91
    invoke-virtual {v2}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lte;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&flagOnlySavingsAccount=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lte;->b()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 90
    invoke-virtual {p0, v1, v2, v3}, Lte;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lir;

    move-result-object v1

    new-instance v2, Ltg;

    invoke-direct {v2, p0, p1}, Ltg;-><init>(Lte;Ltj;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lte;->c:Ltj;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ltj;->a(Laby;)V

    goto :goto_0
.end method
