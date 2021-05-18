.class public Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/Dialog;

.field private c:Lfrb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 35
    const-string v0, "CancelarAgendamentoActivity"

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)Lfrb;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->c:Lfrb;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    const-string v1, "EXTRADADOS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lfrb;

    iput-object v0, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->c:Lfrb;

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f100685

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 75
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Lfqt;

    invoke-direct {v0, p0}, Lfqt;-><init>(Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lfrb;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->c:Lfrb;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lfqt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04013f

    invoke-virtual {p0, v0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 51
    const v1, 0x7f09020d

    invoke-virtual {p0, v1}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->b()V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/agendamentos/activity/CancelarAgendamentoActivity;->a()V

    .line 57
    return-void
.end method
