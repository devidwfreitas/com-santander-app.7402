.class public Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;
.super Lgrs;
.source "SourceFile"


# instance fields
.field public a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/Dialog;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkbq;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 41
    const-string v0, "GerenciarDispositivoActivity"

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->c:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->f:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f100316

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->d:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f100317

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->e:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f100319

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->g:Landroid/widget/ListView;

    .line 75
    new-instance v0, Lkax;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkax;-><init>(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;Lkaw;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lkby;

    invoke-virtual {v0, v1}, Lkax;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lkbi;

    iget-object v2, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->f:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lkbi;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 163
    return-void
.end method

.method public static synthetic c(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 59
    const v1, 0x7f090a87

    invoke-virtual {p0, v1}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 61
    const v0, 0x7f04006c

    invoke-virtual {p0, v0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->setContentView(I)V

    .line 63
    iput-object p0, p0, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a:Landroid/app/Activity;

    .line 65
    invoke-direct {p0}, Lcom/santander/app/perfil/activity/GerenciarDispositivoActivity;->a()V

    .line 66
    return-void
.end method
