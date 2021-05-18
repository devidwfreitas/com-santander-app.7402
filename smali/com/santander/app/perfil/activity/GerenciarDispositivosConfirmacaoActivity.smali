.class public Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# static fields
.field private static final a:Ljava/lang/String; = "GerenciarDispositivosConfirmacaoActivity"


# instance fields
.field private b:I

.field private c:Landroid/app/Dialog;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgky;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkbq;

.field private f:Ljava/lang/String;

.field private g:I

.field private w:I

.field private x:Lkbo;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->b:I

    .line 48
    iput v1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->g:I

    iput v1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->x:Lkbo;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Lkbo;)Lkbo;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->x:Lkbo;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Lkbq;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->e:Lkbq;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 138
    const v1, 0x7f100a21

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 140
    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 142
    iget v2, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->b:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 144
    const v2, 0x7f100a22

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 148
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 4
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
    const/4 v3, 0x1

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Lgky;

    const v1, 0x7f0906f3

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v3}, Lgky;->a(Z)V

    .line 226
    iget-object v1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Lgky;

    const v1, 0x7f09066b

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmzr;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnai;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v0, Lgky;

    const-string v1, "Aparelho:"

    iget-object v2, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->x:Lkbo;

    invoke-virtual {v2}, Lkbo;->a()Lkbn;

    move-result-object v2

    invoke-virtual {v2}, Lkbn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgky;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v3}, Lgky;->a(Z)V

    .line 233
    iget-object v1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lkaz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkaz;-><init>(Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;Lkay;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lkbv;

    invoke-virtual {v0, v1}, Lkaz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->startActivity(Landroid/content/Intent;)V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x0

    const/16 v3, 0x64

    .line 55
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040210

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "gerenciar_dispositivos"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lkbq;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->e:Lkbq;

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "posicao_slider"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    .line 65
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->e:Lkbq;

    invoke-virtual {v0}, Lkbq;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->g:I

    .line 67
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->g:I

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->g:I

    sparse-switch v0, :sswitch_data_0

    .line 129
    :cond_0
    :goto_0
    const v0, 0x7f090a87

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->a()V

    .line 133
    return-void

    .line 70
    :sswitch_0
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v4, :cond_1

    .line 71
    const-string v0, "ativarDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 72
    const-string v0, "ativarComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 73
    const-string v0, "Aparelho habilitado com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v3, :cond_0

    .line 75
    const-string v0, "excluirDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 76
    const-string v0, "excluirComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 77
    const-string v0, "Aparelho exclu\u00eddo com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 81
    :sswitch_1
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-nez v0, :cond_2

    .line 82
    const-string v0, "bloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 83
    const-string v0, "bloquearComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 84
    const-string v0, "Aparelho bloqueado com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_2
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v3, :cond_0

    .line 86
    const-string v0, "excluirDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 87
    const-string v0, "excluirComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 88
    const-string v0, "Aparelho exclu\u00eddo com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 93
    :sswitch_2
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-nez v0, :cond_3

    .line 94
    const-string v0, "ativarDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 95
    const-string v0, "ativarComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 96
    const-string v0, "Aparelho bloqueado com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_3
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v3, :cond_0

    .line 98
    const-string v0, "excluirDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 99
    const-string v0, "excluirComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 100
    const-string v0, "Aparelho exclu\u00eddo com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto :goto_0

    .line 104
    :sswitch_3
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v4, :cond_4

    .line 105
    const-string v0, "desbloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 106
    const-string v0, "desbloquearComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 107
    const-string v0, "Aparelho desbloqueado com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 108
    :cond_4
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v3, :cond_0

    .line 109
    const-string v0, "excluirDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 110
    const-string v0, "excluirComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 111
    const-string v0, "Aparelho exclu\u00eddo com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 116
    :sswitch_4
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-nez v0, :cond_5

    .line 117
    const-string v0, "bloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 118
    const-string v0, "bloquearComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 119
    const-string v0, "Aparelho bloqueado com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_5
    iget v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->w:I

    if-ne v0, v3, :cond_0

    .line 121
    const-string v0, "excluirDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->f:Ljava/lang/String;

    .line 122
    const-string v0, "excluirComprovanteBloquearDispositivo"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->z:Ljava/lang/String;

    .line 123
    const-string v0, "Aparelho exclu\u00eddo com sucesso"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivosConfirmacaoActivity;->y:Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1b -> :sswitch_4
    .end sparse-switch
.end method
