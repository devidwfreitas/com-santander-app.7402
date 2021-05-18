.class public Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;
.super Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "extra_cancelavel"

.field private static final w:Ljava/lang/String; = "Comprovante"


# instance fields
.field private x:Lhxl;

.field private y:Lhlh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lhxl;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "extra_cancelavel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method private h()Lgvb;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 83
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 88
    const-string v1, "Comprovante"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 91
    iget-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v1}, Lhlh;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v1}, Lhlh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v1}, Lhxl;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 95
    const-string v1, "Solicita\u00e7\u00e3o de Cancelamento\nrealizada com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelamento realizado com sucesso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v2}, Lhlh;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 102
    return-object v0

    .line 97
    :cond_0
    const-string v1, "Cancelamento realizado com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Lgvb;
    .locals 5

    .prologue
    .line 106
    new-instance v1, Lgvb;

    invoke-direct {v1}, Lgvb;-><init>()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const-string v0, ""

    invoke-virtual {v1, v0}, Lgvb;->i(Ljava/lang/String;)V

    .line 110
    const-string v0, ""

    invoke-virtual {v1, v0}, Lgvb;->j(Ljava/lang/String;)V

    .line 112
    const-string v0, "Comprovante"

    invoke-virtual {v1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgvb;->d(Z)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lgvb;->e(Z)V

    .line 116
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    if-eqz v3, :cond_0

    .line 118
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v0}, Lhlh;->e()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v3}, Lhlh;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgvb;->f(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v3}, Lhlh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgvb;->e(Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comprovante - Erro no Cancelamento "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v4}, Lhlh;->getDataHoraTransacao()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgvb;->g(Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v3, Lgky;

    const-string v4, "Erro: "

    invoke-direct {v3, v4, v0}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v1, v2}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 125
    const-string v0, "Cancelamento n\u00e3o realizado"

    invoke-virtual {v1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 127
    return-object v1
.end method

.method private j()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v1}, Lhxl;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return-object v0

    .line 135
    :pswitch_0
    new-instance v1, Lgky;

    const-string v2, "Valor do empr\u00e9stimo: "

    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lgky;

    const-string v2, "Quantidade de parcelas: "

    const-string v3, "%sx"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v5}, Lhxl;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v1, Lgky;

    const-string v2, "Valor da parcela: "

    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v3}, Lhxl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do contrato: "

    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v3}, Lhxl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :pswitch_1
    new-instance v1, Lgky;

    const-string v2, "Valor do empr\u00e9stimo: "

    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v3}, Lhxl;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lgky;

    const-string v2, "Quantidade de parcelas: "

    const-string v3, "%sx"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v5}, Lhxl;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do contrato: "

    iget-object v3, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v3}, Lhxl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v6}, Lgky;->a(Z)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v0}, Lhxl;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 74
    const v0, 0x7f040268

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_cancelavel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhxl;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    .line 44
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->x:Lhxl;

    invoke-interface {v0}, Lhxl;->z()Lhlh;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    .line 45
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->y:Lhlh;

    invoke-interface {v0}, Lhlh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comprovanteBase"

    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->h()Lgvb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    invoke-interface {v0}, Lhya;->h()V

    .line 51
    :goto_0
    invoke-super {p0, p1}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lhme;

    invoke-direct {v1, p0}, Lhme;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lhmf;

    invoke-direct {v1, p0}, Lhmf;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comprovanteBase"

    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/ComprovanteCancelarEmprestimo;->i()Lgvb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method
