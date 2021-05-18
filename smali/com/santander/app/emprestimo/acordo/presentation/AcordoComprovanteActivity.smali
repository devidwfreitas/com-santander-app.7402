.class public Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;
.super Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final g:Ljava/lang/String; = "EXTRA_CONTRATACAO"

.field private static final w:Ljava/lang/String; = "EXTRA_SUCCESS"


# instance fields
.field private A:Landroid/content/ClipboardManager;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Lhfy;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;-><init>()V

    return-void
.end method

.method private a(Lhfy;)Lgvb;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 159
    invoke-interface {p1}, Lhfy;->e()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 160
    const v1, 0x7f040247

    iput v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->C:I

    .line 165
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->i(Ljava/lang/String;)V

    .line 166
    const-string v1, ""

    invoke-virtual {v0, v1}, Lgvb;->j(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->c(Lhfy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 170
    const-string v1, "Renegocia\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v2}, Lgvb;->d(Z)V

    .line 173
    invoke-interface {p1}, Lhfy;->e()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090787

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->a(Ljava/lang/String;)V

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lhfy;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lhfy;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1}, Lhfy;->getAutenticacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 178
    const-string v1, "Renegocia\u00e7\u00e3o de d\u00edvida contratada com sucesso"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renegocia\u00e7\u00e3o de d\u00edvida"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "dd/MM/yyyy HH:mm:ss"

    invoke-static {v2, v3}, Lgpl;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->c(Z)V

    .line 184
    return-object v0

    .line 162
    :cond_1
    iput v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->C:I

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lhfy;Z)V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    const-string v1, "EXTRA_CONTRATACAO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    const-string v1, "EXTRA_SUCCESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private b(Lhfy;)Lgvb;
    .locals 5

    .prologue
    .line 188
    new-instance v0, Lgvb;

    invoke-direct {v0}, Lgvb;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->i(Ljava/lang/String;)V

    .line 192
    const-string v2, ""

    invoke-virtual {v0, v2}, Lgvb;->j(Ljava/lang/String;)V

    .line 193
    new-instance v2, Lgky;

    const-string v3, "Erro: "

    invoke-interface {p1}, Lhfy;->z()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 195
    const-string v1, "Renegocia\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->c(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgvb;->d(Z)V

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgvb;->e(Z)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lhfy;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lhfy;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->f(Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Lhfy;->getAutenticacao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgvb;->e(Ljava/lang/String;)V

    .line 201
    const-string v1, "Renegocia\u00e7\u00e3o de d\u00edvida n\u00e3o realizada"

    invoke-virtual {v0, v1}, Lgvb;->d(Ljava/lang/String;)V

    .line 202
    const-string v1, "Transa\u00e7\u00e3o n\u00e3o efetuada"

    invoke-virtual {v0, v1}, Lgvb;->b(Ljava/lang/String;)V

    .line 204
    const-string v1, "Comprovante - Erro na Renegocia\u00e7\u00e3o"

    invoke-virtual {v0, v1}, Lgvb;->g(Ljava/lang/String;)V

    .line 206
    return-object v0
.end method

.method private c(Lhfy;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhfy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    new-instance v1, Lgky;

    const-string v2, "Valor renegociado:  "

    invoke-interface {p1}, Lhfy;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v1, Lgky;

    const-string v2, "Quantidade de Parcelas: "

    invoke-interface {p1}, Lhfy;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lgky;

    const-string v2, "Valor da Parcela: "

    invoke-interface {p1}, Lhfy;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {p1}, Lhfy;->e()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 227
    new-instance v1, Lgky;

    const-string v2, "Conta corrente: "

    invoke-interface {p1}, Lhfy;->N()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    new-instance v1, Lgky;

    const-string v2, "N\u00famero do contrato: "

    invoke-interface {p1}, Lhfy;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v4}, Lgky;->a(Z)V

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->C:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 103
    :sswitch_0
    invoke-static {}, Lhhr;->g()V

    .line 105
    :try_start_0
    const-string v0, "codigo_barras"

    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->B:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->A:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 107
    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-static {}, Lhhr;->h()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "cod_barras_acordo"

    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 121
    :sswitch_2
    invoke-static {}, Lhhr;->f()V

    .line 122
    const v0, 0x7f09075b

    const v1, 0x7f090a03

    const v2, 0x7f090a04

    new-instance v3, Lhgp;

    invoke-direct {v3, p0}, Lhgp;-><init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lhys;->a(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-static {}, Lhhr;->h()V

    .line 143
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-super {p0}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->c()V

    .line 146
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x7f1001ac -> :sswitch_3
        0x7f1001ad -> :sswitch_2
        0x7f100b89 -> :sswitch_0
        0x7f100b8a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CONTRATACAO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhfy;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->D:Lhfy;

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SUCCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comprovanteBase"

    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->D:Lhfy;

    invoke-direct {p0, v2}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->a(Lhfy;)Lgvb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    :goto_1
    invoke-super {p0, p1}, Lcom/santander/app/comprovantes/activity/ComprovanteBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comprovanteBase"

    iget-object v2, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->D:Lhfy;

    invoke-direct {p0, v2}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->b(Lhfy;)Lgvb;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCreateContentExtra(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->A:Landroid/content/ClipboardManager;

    .line 82
    const v0, 0x7f100b88

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->z:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->D:Lhfy;

    invoke-interface {v1}, Lhfy;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f100b89

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->x:Landroid/widget/LinearLayout;

    .line 86
    const v0, 0x7f100b8a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->y:Landroid/widget/LinearLayout;

    .line 88
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->B:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoComprovanteActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
