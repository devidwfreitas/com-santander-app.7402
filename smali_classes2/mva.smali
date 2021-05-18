.class public Lmva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmsd;
.implements Lmuz;


# instance fields
.field private a:Lmsz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Lmsc;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmsz;)V
    .locals 1
    .param p1    # Lmsz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmva;->a:Lmsz;

    .line 40
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lmse;->a(Landroid/app/Activity;)Lmsc;

    move-result-object v0

    iput-object v0, p0, Lmva;->b:Lmsc;

    .line 41
    return-void
.end method

.method static synthetic a(Lmva;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lmva;->e()V

    return-void
.end method

.method static synthetic a(Lmva;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lmva;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "EXTRA_CLIPBOARD_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmva;->c:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lmva;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lmva;->e()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->a()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lmva;->a:Lmsz;

    iget-object v0, p0, Lmva;->a:Lmsz;

    check-cast v0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    const v2, 0x7f090b56

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lmsz;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lmva;->b:Lmsc;

    iget-object v1, p0, Lmva;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lmsc;->a(Ljava/lang/String;Lmsd;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->g()V

    .line 113
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->e()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmva;->b:Lmsc;

    invoke-interface {v0, p1}, Lmsc;->a(I)V

    .line 86
    invoke-direct {p0}, Lmva;->e()V

    .line 87
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lmva;->a:Lmsz;

    const-string v1, ""

    invoke-interface {v0, v1}, Lmsz;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lmva;->a:Lmsz;

    iget-object v0, p0, Lmva;->a:Lmsz;

    check-cast v0, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    const v2, 0x7f090b56

    invoke-virtual {v0, v2}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lmsz;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/santander/app/MinhaConta;->a()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lmvb;

    invoke-direct {v1, p0, p1}, Lmvb;-><init>(Lmva;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lmyn;->a(Landroid/app/Application;Lala;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->e()V

    .line 121
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmvc;

    invoke-direct {v2, p0}, Lmvc;-><init>(Lmva;)V

    invoke-interface {v0, v1, v2}, Lmsz;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lmrp;Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    if-eqz p2, :cond_1

    .line 101
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->h()V

    .line 105
    :goto_1
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->e()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->i()V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lmva;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0, p1}, Lmsz;->c(Z)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->k()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->e()V

    .line 134
    iget-object v0, p0, Lmva;->a:Lmsz;

    invoke-interface {v0}, Lmsz;->k()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lmva;->a:Lmsz;

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/santander/app/MinhaConta;->b(Z)V

    .line 80
    invoke-static {}, Ljcd;->a()V

    .line 81
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lmva;->a:Lmsz;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lmva;->b:Lmsc;

    invoke-interface {v0}, Lmsc;->a()Lmrp;

    move-result-object v0

    invoke-virtual {v0}, Lmrp;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lmva;->a:Lmsz;

    const v1, 0x7f090b63

    invoke-interface {v0, v1}, Lmsz;->setTitle(I)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lmva;->a:Lmsz;

    const v1, 0x7f090b62

    invoke-interface {v0, v1}, Lmsz;->setTitle(I)V

    goto :goto_0
.end method
