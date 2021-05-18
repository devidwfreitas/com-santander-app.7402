.class public Lxy;
.super Labw;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lya;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Labw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lace;Lya;)V
    .locals 4

    .prologue
    .line 32
    iput-object p1, p0, Lxy;->a:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lxy;->b:Lya;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    sget-object v1, Labq;->TERMO_ACEITE:Labq;

    invoke-virtual {v1}, Labq;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Lace;->f()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-virtual {p2}, Lace;->f()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {p2}, Lace;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gw-app-key="

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Labp;->b()Labp;

    move-result-object v2

    invoke-virtual {v2}, Labp;->a()Lje;

    move-result-object v2

    invoke-virtual {v2}, Lje;->a()Lio;

    move-result-object v2

    invoke-virtual {v2}, Lio;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const-string v1, "&termType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v2

    invoke-virtual {v2}, Llm;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v1

    invoke-virtual {v1}, Llm;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    const-string v1, "&termValidityDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lace;->r()Llm;

    move-result-object v2

    invoke-virtual {v2}, Llm;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laat;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    :try_start_0
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->a()Lje;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lxy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lir;

    move-result-object v0

    new-instance v2, Lxz;

    invoke-direct {v2, p0, p3, p1}, Lxz;-><init>(Lxy;Lya;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lxy;->b:Lya;

    new-instance v2, Laby;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Laby;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lya;->a(Laby;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lya;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lxy;->a:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lxy;->b:Lya;

    .line 77
    return-void
.end method
