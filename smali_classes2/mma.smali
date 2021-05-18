.class Lmma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmlw;


# direct methods
.method constructor <init>(Lmlw;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lmma;->a:Lmlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 143
    check-cast p1, Lis;

    .line 144
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lmli;

    invoke-direct {v0}, Lmli;-><init>()V

    .line 146
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmli;->setMensagemErro(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lmma;->a:Lmlw;

    invoke-static {v1}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v1

    invoke-interface {v1, v0}, Lmlv;->d(Lmli;)V

    .line 175
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmks;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmks;

    .line 153
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lmma;->a:Lmlw;

    invoke-static {v1}, Lmlw;->b(Lmlw;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 155
    invoke-virtual {v0}, Lmks;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v0}, Lmks;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v0}, Lmks;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Lmli;

    invoke-direct {v1}, Lmli;-><init>()V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmli;->b(Ljava/util/List;)V

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lmli;->a(Ljava/util/List;)V

    .line 166
    invoke-virtual {v0}, Lmks;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkr;

    .line 167
    new-instance v3, Lmkq;

    invoke-direct {v3}, Lmkq;-><init>()V

    .line 168
    invoke-virtual {v0}, Lmkr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmkq;->d(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lmkr;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmkq;->e(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lmkr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmkq;->c(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lmli;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_2
    iget-object v0, p0, Lmma;->a:Lmlw;

    invoke-static {v0}, Lmlw;->a(Lmlw;)Lmlv;

    move-result-object v0

    invoke-interface {v0, v1}, Lmlv;->c(Lmli;)V

    goto/16 :goto_0
.end method
