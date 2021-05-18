.class public Lmbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iput p2, p0, Lmbt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)I

    .line 285
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)I

    .line 279
    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->e()Lmbu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->e()Lmbu;

    move-result-object v0

    iget-object v1, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lmbu;->a(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-object v2, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    iget v0, p0, Lmbt;->a:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-static {v2, v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a(Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;I)I

    .line 273
    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->e()Lmbu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmbt;->b:Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->e()Lmbu;

    move-result-object v0

    iget v2, p0, Lmbt;->a:I

    if-eqz v2, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lmbu;->b(Z)V

    .line 274
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 272
    goto :goto_0

    .line 273
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
