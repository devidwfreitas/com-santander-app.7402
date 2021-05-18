.class public Lmby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field c:Landroid/view/View;

.field d:I

.field final synthetic e:Lcom/santander/app/seguros/ui/widgets/FlipLayout;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/widgets/FlipLayout;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lmby;->e:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lmby;->c:Landroid/view/View;

    .line 270
    iput p3, p0, Lmby;->d:I

    .line 271
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget v0, p0, Lmby;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 283
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 284
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 285
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 286
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 287
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 289
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lmby;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lmby;->a(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lmby;->e:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->l:Z

    .line 303
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lmby;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lmby;->a(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lmby;->e:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->l:Z

    .line 297
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lmby;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lmby;->e:Lcom/santander/app/seguros/ui/widgets/FlipLayout;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/santander/app/seguros/ui/widgets/FlipLayout;->l:Z

    .line 277
    return-void
.end method
