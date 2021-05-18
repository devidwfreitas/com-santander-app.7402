.class Lmmz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlo;

.field final synthetic b:Lmmv;


# direct methods
.method constructor <init>(Lmmv;Lmlo;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmmz;->b:Lmmv;

    iput-object p2, p0, Lmmz;->a:Lmlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 152
    new-instance v1, Lmlp;

    invoke-direct {v1}, Lmlp;-><init>()V

    .line 154
    check-cast p1, Lis;

    .line 155
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lmlp;->setMensagemErro(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmmz;->b:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, v1}, Lmmu;->b(Lmlp;)V

    .line 182
    :goto_1
    return-void

    .line 156
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lmlm;

    invoke-virtual {v0, v2, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlm;

    .line 163
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    .line 164
    iget-object v1, p0, Lmmz;->b:Lmmv;

    invoke-static {v1}, Lmmv;->b(Lmmv;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 165
    invoke-virtual {v0}, Lmlm;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v0}, Lmlm;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v0}, Lmlm;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-object v2, p0, Lmmz;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->a(Ljava/lang/String;)V

    .line 172
    const-string v2, ""

    invoke-virtual {v1, v2}, Lmlp;->b(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lmlm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->c(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lmmz;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->d(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lmmz;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->e(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lmmz;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->f(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Lmlm;->getOsgData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlp;->a(Ljava/util/HashMap;)V

    .line 180
    iget-object v0, p0, Lmmz;->b:Lmmv;

    invoke-static {v0}, Lmmv;->a(Lmmv;)Lmmu;

    move-result-object v0

    invoke-interface {v0, v1}, Lmmu;->a(Lmlp;)V

    goto :goto_1
.end method
