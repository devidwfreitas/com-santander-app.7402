.class public Lgsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgsf;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lgsl;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lgsl;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Lgsn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lgsl;->a:Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;

    invoke-static {v0}, Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;->f(Lcom/santander/app/components/view/appbarsearchview/SearchViewAppBar;)Lgsn;

    move-result-object v0

    invoke-interface {v0}, Lgsn;->a()V

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method
