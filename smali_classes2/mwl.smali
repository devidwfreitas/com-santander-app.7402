.class public Lmwl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/service/TransferGoldenService;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lmwl;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 272
    iget-object v0, p0, Lmwl;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->k(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 275
    :cond_0
    return-void
.end method
