.class public Lmwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/service/TransferGoldenService;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmwg;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lmwg;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->a(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 102
    new-instance v1, Lmwh;

    invoke-direct {v1, p0}, Lmwh;-><init>(Lmwg;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 109
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 110
    return-void
.end method
