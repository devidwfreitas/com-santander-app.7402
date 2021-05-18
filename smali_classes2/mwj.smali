.class public Lmwj;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/service/TransferGoldenService;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lmwj;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 175
    iget-object v0, p0, Lmwj;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    iget-object v1, p0, Lmwj;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v1}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->e(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lmwj;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->b(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    .line 177
    return-void
.end method
