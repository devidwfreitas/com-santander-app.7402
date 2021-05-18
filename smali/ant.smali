.class public Lant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lanp;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lant;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lant;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->e(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lant;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->f(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lant;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->e(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lant;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->f(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
