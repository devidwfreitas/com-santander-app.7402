.class public Lmwi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/transfergolden/service/TransferGoldenService;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lmwi;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 162
    iget-object v0, p0, Lmwi;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->c(Lcom/santander/app/transfergolden/service/TransferGoldenService;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    iget-object v0, p0, Lmwi;->a:Lcom/santander/app/transfergolden/service/TransferGoldenService;

    invoke-static {v0}, Lcom/santander/app/transfergolden/service/TransferGoldenService;->d(Lcom/santander/app/transfergolden/service/TransferGoldenService;)V

    .line 164
    return-void
.end method
