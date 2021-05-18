.class public Ljkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljjx;
.implements Ljks;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljkg;

.field private c:Ljjw;

.field private d:Z


# direct methods
.method public constructor <init>(Ljkg;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 45
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Ljkt;->a:Landroid/app/Activity;

    .line 46
    iput-object p1, p0, Ljkt;->b:Ljkg;

    .line 47
    new-instance v0, Ljjy;

    invoke-direct {v0, p0}, Ljjy;-><init>(Ljjx;)V

    iput-object v0, p0, Ljkt;->c:Ljjw;

    .line 48
    return-void
.end method

.method private a(Ljava/util/List;)Lcgz;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdb;",
            ">;)",
            "Lcgz;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdb;

    .line 148
    invoke-virtual {v0}, Ljdb;->f()Ljava/lang/String;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Ljdb;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_1

    .line 150
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v0}, Ljdb;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljdb;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    .line 153
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Ljdb;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljdb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Lcom/github/mikephil/charting/data/PieEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljdb;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v8, v5}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_2
    new-instance v0, Lcgz;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcgz;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v8}, Lcgz;->a(F)V

    .line 161
    invoke-virtual {v0, v8}, Lcgz;->f(F)V

    .line 162
    invoke-virtual {v0, v3}, Lcgz;->a(Ljava/util/List;)V

    .line 164
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->d()V

    .line 53
    iget-object v0, p0, Ljkt;->c:Ljjw;

    invoke-interface {v0}, Ljjw;->a()V

    .line 54
    return-void
.end method

.method public a(Landroid/content/Intent;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Ljdb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    if-eqz p2, :cond_0

    const-string v0, "redirect_deeplink_target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->d()V

    .line 183
    const-string v0, "exibe_lista"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljkt;->d:Z

    .line 184
    const-string v0, "redirect_deeplink_target"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdb;

    .line 186
    invoke-virtual {v0}, Ljdb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {p0, v0}, Ljkt;->a(Ljdb;)V

    .line 191
    :cond_3
    iput-boolean v4, p0, Ljkt;->d:Z

    .line 192
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->e()V

    goto :goto_0
.end method

.method public a(Ljdb;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x4000000

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1}, Ljdb;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Ljdb;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    invoke-virtual {p1}, Ljdb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljdh;->valueOf(Ljava/lang/String;)Ljdh;

    move-result-object v1

    .line 61
    sget-object v2, Ljku;->a:[I

    invoke-virtual {v1}, Ljdh;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    iget-object v1, p0, Ljkt;->b:Ljkg;

    invoke-interface {v1, v0}, Ljkg;->a(Landroid/content/Intent;)V

    .line 125
    :cond_0
    :goto_1
    return-void

    .line 64
    :pswitch_0
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Fundos"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/fundos/presentation/ListagemFundosActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "valor_bruto"

    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 69
    :pswitch_1
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Poupanca"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const-string v1, "tipo_produto"

    sget-object v2, Ljda;->POUPANCA:Ljda;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/Poupanca_posicaoconsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string v1, "positionFundo"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Previdencia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v1, "tipo_produto"

    sget-object v2, Ljda;->PREVIDENCIA:Ljda;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 88
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/previdencia/presentation/PosicaoConsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 93
    :pswitch_3
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "CDB/LCI"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljdb;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/investimentos/presentation/SemProdutoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v1, "tipo_produto"

    sget-object v2, Ljda;->RENDA_FIXA:Ljda;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 98
    const-string v1, "exibe_lista"

    iget-boolean v2, p0, Ljkt;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 101
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljkt;->a:Landroid/app/Activity;

    const-class v2, Lcom/santander/app/Rendafixa_posicaoconsolidadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "exibe_lista"

    iget-boolean v2, p0, Ljkt;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "positionFundo"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 111
    :cond_6
    const-string v0, "corretora"

    invoke-virtual {p1}, Ljdb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Corretora"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v0, 0x7f090b89

    invoke-static {v0}, Lmyo;->a(I)Z

    move-result v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->a()V

    .line 120
    :cond_7
    :goto_2
    const-string v0, "coe"

    invoke-virtual {p1}, Ljdb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "Investimentos_MeusInvestimentos_Acao"

    const-string v1, "Coe"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->c()V

    goto/16 :goto_1

    .line 117
    :cond_8
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->b()V

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljdf;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->e()V

    .line 135
    invoke-virtual {p1}, Ljdf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljdf;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-virtual {p1}, Ljdf;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Ljkt;->a(Ljava/util/List;)Lcgz;

    move-result-object v1

    invoke-interface {v0, v1}, Ljkg;->a(Lcgz;)V

    .line 140
    :cond_0
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0, p1}, Ljkg;->a(Ljdf;)V

    .line 141
    return-void
.end method

.method public b(Ljdf;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->e()V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljdf;->getMensagemErro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-virtual {p1}, Ljdf;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljkg;->a(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Ljkt;->b:Ljkg;

    invoke-interface {v0}, Ljkg;->f()V

    goto :goto_0
.end method

.method public c(Ljdf;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Ljkt;->a(Ljdf;)V

    .line 130
    return-void
.end method
