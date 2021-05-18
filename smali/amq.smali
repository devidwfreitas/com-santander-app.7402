.class public Lamq;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;Z)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lamq;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-boolean p2, p0, Lamq;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 337
    iget-boolean v0, p0, Lamq;->a:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lamq;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->l(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 329
    iget-boolean v0, p0, Lamq;->a:Z

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lamq;->b:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    invoke-static {v0}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->l(Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :cond_0
    return-void
.end method
