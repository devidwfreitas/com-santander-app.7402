.class public Liqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lguf;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Liqm;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Liqm;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    return v0
.end method

.method public a(Lgxa;)V
    .locals 2

    .prologue
    .line 819
    const-string v0, "actionInvista"

    const-string v1, "actionInvista"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-static {p1}, Lgyg;->a(Lgxa;)V

    .line 821
    iget-object v0, p0, Liqm;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lgyq;

    move-result-object v0

    invoke-interface {v0, p1}, Lgyq;->b(Lgxa;)V

    .line 822
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 845
    invoke-static {}, Lmzr;->d()I

    move-result v0

    return v0
.end method

.method public b(Lgxa;)V
    .locals 2

    .prologue
    .line 826
    const-string v0, "actionAbrir"

    const-string v1, "actionAbrir"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-static {p1}, Lgyg;->c(Lgxa;)V

    .line 828
    iget-object v0, p0, Liqm;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lgyq;

    move-result-object v0

    invoke-interface {v0, p1}, Lgyq;->e(Lgxa;)V

    .line 829
    iget-object v0, p0, Liqm;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lgyq;

    move-result-object v0

    invoke-interface {v0, p1}, Lgyq;->c(Lgxa;)V

    .line 830
    return-void
.end method

.method public c(Lgxa;)V
    .locals 2

    .prologue
    .line 834
    const-string v0, "actionFechar"

    const-string v1, "actionFechar"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {p1}, Lgyg;->b(Lgxa;)V

    .line 836
    return-void
.end method
