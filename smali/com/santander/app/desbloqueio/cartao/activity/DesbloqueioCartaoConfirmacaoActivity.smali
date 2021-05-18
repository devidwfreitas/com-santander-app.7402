.class public Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lnau;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

.field private c:Landroid/app/Dialog;

.field private d:Lhct;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 35
    const-string v0, "DesbloqueioCartaoComprovanteActivity"

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Lhct;)Lhct;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->d:Lhct;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)Lhct;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->d:Lhct;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->c:Landroid/app/Dialog;

    .line 155
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const v3, 0x7f1006ce

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 76
    iget v2, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->e:I

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lhcl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhcl;-><init>(Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;Lhck;)V

    .line 64
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhcl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040150

    invoke-virtual {p0, v0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->setContentView(I)V

    .line 47
    iput-object p0, p0, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->b:Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;

    .line 48
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 52
    const v1, 0x7f09036b

    invoke-virtual {p0, v1}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/santander/app/desbloqueio/cartao/activity/DesbloqueioCartaoConfirmacaoActivity;->a()V

    .line 57
    return-void
.end method
