.class Lmne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Lcom/santander/app/contacorrente/domain/Conta;

.field final synthetic b:Lmnc;


# direct methods
.method constructor <init>(Lmnc;Lcom/santander/app/contacorrente/domain/Conta;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lmne;->b:Lmnc;

    iput-object p2, p0, Lmne;->a:Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 88
    check-cast p1, Lis;

    .line 89
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lmne;->b:Lmnc;

    invoke-static {v0}, Lmnc;->b(Lmnc;)Lmnb;

    move-result-object v0

    const-string v1, "Toque no bot\u00e3o abaixo para cadastrar um novo favorecido."

    invoke-interface {v0, v1}, Lmnb;->a(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lmlh;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlh;

    .line 96
    invoke-virtual {p1}, Lis;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 97
    iget-object v1, p0, Lmne;->b:Lmnc;

    invoke-static {v1}, Lmnc;->c(Lmnc;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lgkt;

    .line 98
    invoke-virtual {v0}, Lmlh;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v0}, Lmlh;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {v0}, Lmlh;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lgkt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v1, v2}, Lhav;->a(Landroid/app/Activity;Lgkt;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v0}, Lmlh;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 105
    iget-object v0, p0, Lmne;->b:Lmnc;

    invoke-static {v0}, Lmnc;->b(Lmnc;)Lmnb;

    move-result-object v0

    const-string v1, "Toque no bot\u00e3o abaixo para cadastrar um novo favorecido."

    invoke-interface {v0, v1}, Lmnb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance v2, Lmkt;

    invoke-direct {v2}, Lmkt;-><init>()V

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Lmkt;->b(Ljava/util/List;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Lmkt;->a(Ljava/util/List;)V

    .line 115
    invoke-virtual {v0}, Lmlh;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmlg;

    .line 119
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v4

    invoke-virtual {v4}, Lmkr;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v4

    invoke-virtual {v4}, Lmkr;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0033"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 122
    new-instance v4, Lmlf;

    invoke-direct {v4}, Lmlf;-><init>()V

    .line 124
    invoke-virtual {v4, v1}, Lmlf;->a(Ljava/lang/Integer;)V

    .line 125
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->g(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->i(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->j(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lmlg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->h(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lmlg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->k(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Lmlg;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "S"

    :goto_2
    invoke-virtual {v4, v1}, Lmlf;->b(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lmlg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->e(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lmlg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->c(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lmlg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmlf;->f(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lmlg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmlf;->a(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Lmkt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 130
    :cond_4
    const-string v1, "N"

    goto :goto_2

    .line 138
    :cond_5
    new-instance v4, Lmle;

    invoke-direct {v4}, Lmle;-><init>()V

    .line 140
    invoke-virtual {v4, v1}, Lmle;->a(Ljava/lang/Integer;)V

    .line 141
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->g(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->i(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Lmlg;->a()Lmkr;

    move-result-object v1

    invoke-virtual {v1}, Lmkr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->j(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lmlg;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->h(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lmlg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->k(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lmlg;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "S"

    :goto_3
    invoke-virtual {v4, v1}, Lmle;->b(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lmlg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->e(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lmlg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->c(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lmlg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lmle;->f(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lmlg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmle;->a(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2}, Lmkt;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 146
    :cond_6
    const-string v1, "N"

    goto :goto_3

    .line 156
    :cond_7
    iget-object v0, p0, Lmne;->b:Lmnc;

    invoke-static {v0}, Lmnc;->a(Lmnc;)Lmqc;

    sput-object v2, Lmqc;->a:Lmkt;

    .line 157
    iget-object v0, p0, Lmne;->b:Lmnc;

    invoke-static {v0}, Lmnc;->a(Lmnc;)Lmqc;

    iget-object v0, p0, Lmne;->a:Lcom/santander/app/contacorrente/domain/Conta;

    sput-object v0, Lmqc;->b:Lcom/santander/app/contacorrente/domain/Conta;

    .line 158
    iget-object v0, p0, Lmne;->b:Lmnc;

    invoke-static {v0}, Lmnc;->b(Lmnc;)Lmnb;

    move-result-object v0

    invoke-interface {v0, v2}, Lmnb;->a(Lmkt;)V

    goto/16 :goto_0
.end method
