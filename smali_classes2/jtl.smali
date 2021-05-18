.class Ljtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljtk;


# direct methods
.method constructor <init>(Ljtk;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Ljtl;->a:Ljtk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 116
    check-cast p1, Lis;

    .line 118
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsr;->setMensagemErro(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v0

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljsr;->setMsgErro(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->c(Ljth;)V

    .line 164
    :goto_0
    return-void

    .line 125
    :cond_0
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

    .line 127
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 128
    iget-object v1, p0, Ljtl;->a:Ljtk;

    iget-object v1, v1, Ljtk;->a:Ljth;

    invoke-static {v1}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v1

    invoke-virtual {v0}, Ljsz;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->setCodErro(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Ljtl;->a:Ljtk;

    iget-object v1, v1, Ljtk;->a:Ljth;

    invoke-static {v1}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v1

    invoke-virtual {v0}, Ljsz;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->setMensagemErro(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Ljtl;->a:Ljtk;

    iget-object v1, v1, Ljtk;->a:Ljth;

    invoke-static {v1}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v1

    invoke-virtual {v0}, Ljsz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->setMsgErro(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->c(Ljth;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljsz;->getFields()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljsz;->getOsgData()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Ljtl;->a:Ljtk;

    iget-object v1, v1, Ljtk;->a:Ljth;

    invoke-static {v1}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v1

    invoke-virtual {v0}, Ljsz;->getOsgData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsr;->a(Ljava/util/HashMap;)V

    .line 137
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->d(Ljth;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v0}, Ljsz;->getFields()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljsz;->getOsgData()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 140
    iget-object v1, p0, Ljtl;->a:Ljtk;

    iget-object v1, v1, Ljtk;->a:Ljth;

    invoke-static {v1}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v1

    invoke-virtual {v0}, Ljsz;->getFields()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsr;->a(Ljava/util/ArrayList;)V

    .line 142
    new-instance v1, Ljsu;

    invoke-direct {v1}, Ljsu;-><init>()V

    .line 143
    iget-object v2, p0, Ljtl;->a:Ljtk;

    iget-object v2, v2, Ljtk;->a:Ljth;

    invoke-static {v2}, Ljth;->b(Ljth;)Ljsr;

    move-result-object v2

    invoke-virtual {v2}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsu;->a(Ljava/util/ArrayList;)V

    .line 144
    invoke-virtual {v0}, Ljsz;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljsu;->setAutenticacao(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljsz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljsu;->setDataHoraTransacao(Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Lmzp;

    const/4 v2, 0x0

    sget-object v3, Lmzp;->RELOAD_CARTOES:Lmzp;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lmzp;->RELOAD_CONTA:Lmzp;

    aput-object v3, v0, v2

    .line 152
    new-instance v2, Lmzn;

    invoke-direct {v2}, Lmzn;-><init>()V

    .line 153
    new-instance v3, Ljtm;

    invoke-direct {v3, p0, v1}, Ljtm;-><init>(Ljtl;Ljsu;)V

    invoke-virtual {v2, v0, v3}, Lmzn;->a([Lmzp;Lfoh;)V

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Ljtl;->a:Ljtk;

    iget-object v0, v0, Ljtk;->a:Ljth;

    invoke-static {v0}, Ljth;->c(Ljth;)V

    goto/16 :goto_0
.end method
