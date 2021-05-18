.class Ljue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljuc;


# direct methods
.method constructor <init>(Ljuc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ljue;->b:Ljuc;

    iput-object p2, p0, Ljue;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 71
    check-cast p1, Lis;

    .line 72
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 73
    new-instance v1, Ljsr;

    invoke-direct {v1}, Ljsr;-><init>()V

    .line 74
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljsr;->setMensagemErro(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljsr;->setMsgErro(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Ljue;->b:Ljuc;

    invoke-static {v0}, Ljuc;->a(Ljuc;)Ljub;

    move-result-object v0

    invoke-interface {v0, v1}, Ljub;->b(Ljsr;)V

    .line 94
    :goto_2
    return-void

    .line 74
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 80
    :cond_2
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljsz;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljsz;

    .line 82
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 83
    iget-object v1, p0, Ljue;->b:Ljuc;

    invoke-static {v1}, Ljuc;->b(Ljuc;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 84
    invoke-virtual {v0}, Ljsz;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v0}, Ljsz;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v0}, Ljsz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_2

    .line 90
    :cond_3
    iget-object v1, p0, Ljue;->b:Ljuc;

    invoke-static {v1, v0}, Ljuc;->a(Ljuc;Ljsz;)Ljsr;

    move-result-object v0

    .line 91
    iget-object v1, p0, Ljue;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljsr;->e(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Ljue;->b:Ljuc;

    invoke-static {v1}, Ljuc;->a(Ljuc;)Ljub;

    move-result-object v1

    invoke-interface {v1, v0}, Ljub;->a(Ljsr;)V

    goto :goto_2
.end method
