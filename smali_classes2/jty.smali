.class Ljty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljsr;

.field final synthetic b:Ljtv;


# direct methods
.method constructor <init>(Ljtv;Ljsr;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Ljty;->b:Ljtv;

    iput-object p2, p0, Ljty;->a:Ljsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 158
    check-cast p1, Lis;

    .line 159
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljsr;->setMensagemErro(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljsr;->setMsgErro(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Ljty;->b:Ljtv;

    invoke-static {v0}, Ljtv;->c(Ljtv;)Ljtu;

    move-result-object v0

    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-interface {v0, v1}, Ljtu;->b(Ljsr;)V

    .line 188
    :goto_2
    return-void

    .line 160
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 166
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

    .line 168
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 174
    iget-object v1, p0, Ljty;->b:Ljtv;

    invoke-static {v1}, Ljtv;->d(Ljtv;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 175
    invoke-virtual {v0}, Ljsz;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Ljsz;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v0}, Ljsz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_2

    .line 181
    :cond_3
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {v0}, Ljsz;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->a(Ljava/util/ArrayList;)V

    .line 182
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {v0}, Ljsz;->getOsgData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->a(Ljava/util/HashMap;)V

    .line 183
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {v0}, Ljsz;->i()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->j(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-virtual {v0}, Ljsz;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljsz;->j()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljsr;->p(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Ljty;->b:Ljtv;

    invoke-static {v0}, Ljtv;->c(Ljtv;)Ljtu;

    move-result-object v0

    iget-object v1, p0, Ljty;->a:Ljsr;

    invoke-interface {v0, v1}, Ljtu;->a(Ljsr;)V

    goto :goto_2

    .line 184
    :cond_4
    iget-object v0, p0, Ljty;->a:Ljsr;

    invoke-virtual {v0}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
