.class public Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# static fields
.field private static final a:Ljava/lang/String; = "AntecipacaoIRConfirmacaoActivity"


# instance fields
.field private b:I

.field private c:Landroid/app/Dialog;

.field private d:Lhkp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f100864

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 66
    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 69
    iget v2, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->b:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 72
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;Lgvb;Lhkj;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->a(Lgvb;Lhkj;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Lgvb;Lhkj;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgvb;",
            "Lhkj;",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 151
    const-string v0, "Comprovante - Contrato de Antecipa\u00e7\u00e3o de Imposto de Renda"

    invoke-virtual {p1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 152
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v2}, Lgvb;->x(Z)V

    .line 156
    if-nez p4, :cond_1

    .line 158
    invoke-virtual {p2}, Lhkj;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lhkj;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Lhkj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lhkj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lhkj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 166
    :goto_0
    invoke-virtual {p1, v2}, Lgvb;->d(Z)V

    .line 167
    invoke-virtual {p1, p3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 168
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@br"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 169
    const-string v0, "Contrata\u00e7\u00e3o de Antecipa\u00e7\u00e3o de Imposto de Renda realizado com sucesso"

    invoke-virtual {p1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 182
    :goto_1
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lhkj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lhkj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 174
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgvb;->d(Z)V

    .line 176
    invoke-virtual {p1, p3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 177
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 178
    const-string v0, "N\u00e3o foi poss\u00edvel solicitar a Antecipa\u00e7\u00e3o de Imposto de Renda"

    invoke-virtual {p1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, v2}, Lgvb;->e(Z)V

    goto :goto_1
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lhjg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhjg;-><init>(Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;Lhjf;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhkp;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->d:Lhkp;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhjg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0401b7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->setContentView(I)V

    .line 53
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->c(I)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhkp;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->d:Lhkp;

    .line 58
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoIR/activity/AntecipacaoIRConfirmacaoActivity;->a()V

    .line 59
    return-void
.end method
