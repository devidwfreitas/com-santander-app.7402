.class public Lans;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lans;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v2, "result"

    iget-object v3, p0, Lans;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v3}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->d(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lans;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lans;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-virtual {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->finish()V

    .line 87
    return-void
.end method
