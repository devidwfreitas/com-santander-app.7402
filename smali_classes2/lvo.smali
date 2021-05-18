.class Llvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmdg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmdg",
        "<",
        "Llvn",
        "<TParent;TSubItem;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Llvn;


# direct methods
.method constructor <init>(Llvn;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Llvo;->a:Llvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lmdm;Llvn;I)Z
    .locals 4

    .prologue
    const v3, 0x7f100e3c

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p3}, Llvn;->j_()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 100
    invoke-virtual {p3}, Llvn;->f()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 102
    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2, v1}, Llvn;->a(Llvn;Z)Z

    .line 108
    :goto_0
    iget-object v2, p0, Llvo;->a:Llvn;

    iget-object v2, v2, Llvn;->a:Llvq;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Llvo;->a:Llvn;

    iget-object v2, v2, Llvn;->a:Llvq;

    invoke-virtual {p3}, Llvn;->f()Z

    move-result v3

    invoke-interface {v2, v3}, Llvq;->a(Z)V

    .line 112
    :cond_0
    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2}, Llvn;->a(Llvn;)Lmdg;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2}, Llvn;->a(Llvn;)Lmdg;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 114
    :cond_2
    :goto_1
    return v0

    .line 104
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 105
    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2, v0}, Llvn;->a(Llvn;Z)Z

    goto :goto_0

    .line 114
    :cond_4
    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2}, Llvn;->a(Llvn;)Lmdg;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Llvo;->a:Llvn;

    invoke-static {v2}, Llvn;->a(Llvn;)Lmdg;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public bridge synthetic a(Landroid/view/View;Lmdm;Lmdt;I)Z
    .locals 1

    .prologue
    .line 96
    check-cast p3, Llvn;

    invoke-virtual {p0, p1, p2, p3, p4}, Llvo;->a(Landroid/view/View;Lmdm;Llvn;I)Z

    move-result v0

    return v0
.end method
