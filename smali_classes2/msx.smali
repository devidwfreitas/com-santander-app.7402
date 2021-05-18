.class public Lmsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lmsx;->b:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    iput-object p2, p0, Lmsx;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lmwm;->n()V

    .line 249
    iget-object v0, p0, Lmsx;->b:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->c(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lmsx;->b:Lcom/santander/app/transfergolden/presentation/ExtensionActivity;

    invoke-static {v0}, Lcom/santander/app/transfergolden/presentation/ExtensionActivity;->d(Lcom/santander/app/transfergolden/presentation/ExtensionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lmsx;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lmsx;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 254
    :cond_0
    return-void
.end method
