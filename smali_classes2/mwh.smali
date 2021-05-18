.class Lmwh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lmwg;


# direct methods
.method constructor <init>(Lmwg;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lmwh;->a:Lmwg;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 106
    iget-object v0, p0, Lmwh;->a:Lmwg;

    iget-object v0, v0, Lmwg;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->b(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    .line 107
    return-void
.end method
