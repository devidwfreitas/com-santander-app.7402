.class public Ljil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljeo;
.implements Ljik;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljgd;

.field private c:Ljen;

.field private d:Ljdx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljgd;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ljil;->a:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Ljil;->b:Ljgd;

    .line 39
    new-instance v0, Ljep;

    invoke-direct {v0, p1, p0}, Ljep;-><init>(Landroid/app/Activity;Ljeo;)V

    iput-object v0, p0, Ljil;->c:Ljen;

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Ljil;->b:Ljgd;

    iget-object v1, p0, Ljil;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090706

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljgd;->a(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public a(Lgvb;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ljil;->b:Ljgd;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Ljil;->d:Ljdx;

    invoke-virtual {v0}, Ljdx;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ljil;->c:Ljen;

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-interface {v0, v1}, Ljen;->a(Ljdx;)V

    .line 113
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgvb;->u(Z)V

    .line 114
    const-string v0, "Investimentos_Fundos_Aplicar_Data"

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-virtual {v1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "Investimentos_Fundos_Aplicar_Valor"

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-virtual {v1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0, p1}, Ljgd;->a(Lgvb;)V

    .line 119
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0, p1}, Ljgd;->b(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public a(Ljdi;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0}, Ljgd;->a()V

    .line 133
    return-void
.end method

.method public a(Ljdx;)V
    .locals 5

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v1, Ljdy;

    const-string v2, "Fundo"

    invoke-virtual {p1}, Ljdx;->M()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Ljim;->a:[I

    invoke-virtual {p1}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    iget-object v1, p0, Ljil;->b:Ljgd;

    invoke-interface {v1, v0}, Ljgd;->a(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0}, Ljgd;->b()V

    .line 94
    return-void

    .line 68
    :pswitch_0
    new-instance v1, Ljdy;

    const-string v2, "Conta Fundo"

    const-string v3, "Nova"

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Ljdy;

    const-string v2, "Valor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R$ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Ljdy;

    const-string v2, "Data da Aplica\u00e7\u00e3o"

    invoke-virtual {p1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Ljdy;

    const-string v2, "Convers\u00e3o em Cotas"

    invoke-virtual {p1}, Ljdx;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v1, Ljdy;

    const-string v2, "Conta Fundo"

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Ljdy;

    const-string v2, "Valor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R$ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Ljdy;

    const-string v2, "Data da Aplica\u00e7\u00e3o"

    invoke-virtual {p1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Ljdy;

    const-string v2, "Convers\u00e3o em Cotas"

    invoke-virtual {p1}, Ljdx;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :pswitch_2
    new-instance v1, Ljdy;

    const-string v2, "Conta Fundo"

    invoke-virtual {p1}, Ljdx;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Ljdy;

    const-string v2, "Transa\u00e7\u00e3o"

    invoke-virtual {p1}, Ljdx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Ljdy;

    const-string v2, "Valor Resgatado"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R$ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Ljdy;

    const-string v2, "Data do Resgate"

    invoke-virtual {p1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Ljdy;

    const-string v2, "Cr\u00e9dito em Conta"

    invoke-virtual {p1}, Ljdx;->ab()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Ljdy;

    const-string v2, "Convers\u00e3o em Cotas"

    invoke-virtual {p1}, Ljdx;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljdy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljdx;Z)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Ljil;->d:Ljdx;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Ljil;->c:Ljen;

    invoke-interface {v0, p1, p2}, Ljen;->b(Ljdx;Z)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Ljil;->c:Ljen;

    invoke-interface {v0, p1, p2}, Ljen;->a(Ljdx;Z)V

    goto :goto_0
.end method

.method public a(Ljej;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Ljil;->c:Ljen;

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-interface {v0, v1}, Ljen;->a(Ljdx;)V

    .line 104
    return-void
.end method

.method public b(Lgvb;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgvb;->u(Z)V

    .line 125
    iget-object v0, p0, Ljil;->b:Ljgd;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0, p1}, Ljgd;->a(Lgvb;)V

    .line 128
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljil;->c:Ljen;

    invoke-interface {v0, p1}, Ljen;->a(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public b(Ljdi;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljgd;->a(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public b(Ljdx;Z)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Ljil;->d:Ljdx;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Ljil;->c:Ljen;

    invoke-interface {v0, p1, p2}, Ljen;->d(Ljdx;Z)V

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Ljil;->c:Ljen;

    invoke-interface {v0, p1, p2}, Ljen;->c(Ljdx;Z)V

    goto :goto_0
.end method

.method public b(Ljej;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public c(Lgvb;)V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgvb;->v(Z)V

    .line 144
    const-string v0, "Investimentos_Fundos_Resgate_Data"

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-virtual {v1}, Ljdx;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Ljil;->d:Ljdx;

    invoke-virtual {v0}, Ljdx;->f()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0906cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "Investimentos_Fundos_Resgate_Tipo"

    const-string v1, "Valor Total"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "Investimentos_Fundos_Resgate_Valor"

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-virtual {v1}, Ljdx;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    iget-object v0, p0, Ljil;->b:Ljgd;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0, p1}, Ljgd;->a(Lgvb;)V

    .line 156
    :cond_0
    return-void

    .line 149
    :cond_1
    const-string v0, "Investimentos_Fundos_Resgate_Tipo"

    const-string v1, "Valor Parcial"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "Investimentos_Fundos_Resgate_Valor"

    iget-object v1, p0, Ljil;->d:Ljdx;

    invoke-virtual {v1}, Ljdx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljdi;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0}, Ljgd;->a()V

    .line 170
    return-void
.end method

.method public d(Lgvb;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgvb;->v(Z)V

    .line 162
    iget-object v0, p0, Ljil;->b:Ljgd;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-interface {v0, p1}, Ljgd;->a(Lgvb;)V

    .line 165
    :cond_0
    return-void
.end method

.method public d(Ljdi;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Ljil;->b:Ljgd;

    invoke-virtual {p1}, Ljdi;->getMensagemErro()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljgd;->a(Ljava/lang/String;)V

    .line 175
    return-void
.end method
