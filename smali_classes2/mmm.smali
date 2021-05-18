.class Lmmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lmml;


# direct methods
.method constructor <init>(Lmml;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lmmm;->a:Lmml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 124
    new-instance v1, Lmlp;

    invoke-direct {v1}, Lmlp;-><init>()V

    .line 126
    check-cast p1, Lis;

    .line 128
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlp;->setMensagemErro(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlp;->setMsgErro(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v2, p0, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->b:Lmmi;

    invoke-static {v2, v1}, Lmmi;->a(Lmmi;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->b(Lgvb;)V

    .line 176
    :goto_0
    return-void

    .line 135
    :cond_0
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

    .line 137
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 138
    invoke-virtual {v0}, Lmlm;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->setCodErro(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lmlm;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->setMensagemErro(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lmlm;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlp;->setMsgErro(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v2, p0, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->b:Lmmi;

    invoke-static {v2, v1}, Lmmi;->a(Lmmi;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->b(Lgvb;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Lmlm;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lmlm;->getOsgData()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 146
    iget-object v1, p0, Lmmm;->a:Lmml;

    iget-object v1, v1, Lmml;->a:Lmlo;

    invoke-virtual {v0}, Lmlm;->getOsgData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlo;->a(Ljava/util/HashMap;)V

    .line 147
    iget-object v0, p0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    iget-object v1, p0, Lmmm;->a:Lmml;

    iget-object v1, v1, Lmml;->a:Lmlo;

    invoke-virtual {v1}, Lmlo;->q()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lmmi;->a(Lmmi;Ljava/util/HashMap;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v0}, Lmlm;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lmlm;->getOsgData()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_3

    .line 150
    iget-object v2, p0, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->a:Lmlo;

    invoke-virtual {v0}, Lmlm;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmlo;->a(Ljava/util/ArrayList;)V

    .line 152
    iget-object v2, p0, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->a:Lmlo;

    invoke-virtual {v2}, Lmlo;->r()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->a(Ljava/util/ArrayList;)V

    .line 153
    invoke-virtual {v0}, Lmlm;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmlp;->setAutenticacao(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lmlm;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmlp;->setDataHoraTransacao(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->b(Lmmi;)Lmqc;

    const/4 v0, 0x0

    sput-object v0, Lmqc;->a:Lmkt;

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v3, v0, v2

    .line 164
    new-instance v2, Lmzn;

    invoke-direct {v2}, Lmzn;-><init>()V

    .line 165
    new-instance v3, Lmmn;

    invoke-direct {v3, p0, v1}, Lmmn;-><init>(Lmmm;Lmlp;)V

    invoke-virtual {v2, v0, v3}, Lmzn;->a([Lmzp;Lfoh;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lmmm;->a:Lmml;

    iget-object v0, v0, Lmml;->b:Lmmi;

    invoke-static {v0}, Lmmi;->c(Lmmi;)Lmmh;

    move-result-object v0

    iget-object v2, p0, Lmmm;->a:Lmml;

    iget-object v2, v2, Lmml;->b:Lmmi;

    invoke-static {v2, v1}, Lmmi;->a(Lmmi;Lmlp;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Lmmh;->b(Lgvb;)V

    goto/16 :goto_0
.end method
