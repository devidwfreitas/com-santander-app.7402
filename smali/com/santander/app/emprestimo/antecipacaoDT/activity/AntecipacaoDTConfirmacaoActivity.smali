.class public Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# static fields
.field private static final a:Ljava/lang/String; = "AntecipacaoDTConfirmacaoActivity"


# instance fields
.field private b:I

.field private c:Landroid/app/Dialog;

.field private d:Lhje;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const v3, 0x7f100863

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 63
    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 66
    iget v2, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->b:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 72
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Lgvb;Lhiy;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->a(Lgvb;Lhiy;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private a(Lgvb;Lhiy;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgvb;",
            "Lhiy;",
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 149
    const-string v0, "Comprovante - Contrato de Antecipa\u00e7\u00e3o de 13\u00ba Sal\u00e1rio"

    invoke-virtual {p1, v0}, Lgvb;->g(Ljava/lang/String;)V

    .line 150
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->c(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v2}, Lgvb;->t(Z)V

    .line 154
    if-nez p4, :cond_1

    .line 156
    invoke-virtual {p2}, Lhiy;->getAutenticacao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Lhiy;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Lhiy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lhiy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lhiy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 163
    :goto_0
    invoke-virtual {p1, v2}, Lgvb;->d(Z)V

    .line 164
    invoke-virtual {p1, p3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 165
    const v0, 0x7f0907a7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@br"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 166
    const-string v0, "Contrata\u00e7\u00e3o de Antecipa\u00e7\u00e3o de 13\u00ba Sal\u00e1rio realizado com sucesso"

    invoke-virtual {p1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 177
    :goto_1
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lhiy;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lhiy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->e(Ljava/lang/String;)V

    .line 170
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->f(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgvb;->d(Z)V

    .line 172
    invoke-virtual {p1, p3}, Lgvb;->b(Ljava/util/ArrayList;)V

    .line 173
    const-string v0, ""

    invoke-virtual {p1, v0}, Lgvb;->h(Ljava/lang/String;)V

    .line 174
    const-string v0, "N\u00e3o foi poss\u00edvel solicitar a Antecipa\u00e7\u00e3o de 13\u00ba Sal\u00e1rio"

    invoke-virtual {p1, v0}, Lgvb;->d(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v2}, Lgvb;->e(Z)V

    goto :goto_1
.end method


# virtual methods
.method public a(IZ)V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lhht;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhht;-><init>(Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;Lhhs;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lhje;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->d:Lhje;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhht;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0401b6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->setContentView(I)V

    .line 51
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->c(I)V

    .line 53
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "simularAntecipacaoRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lhje;

    iput-object v0, p0, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->d:Lhje;

    .line 56
    invoke-direct {p0}, Lcom/santander/app/emprestimo/antecipacaoDT/activity/AntecipacaoDTConfirmacaoActivity;->a()V

    .line 57
    return-void
.end method
