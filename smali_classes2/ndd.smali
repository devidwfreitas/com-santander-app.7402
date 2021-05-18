.class public Lndd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;


# direct methods
.method public constructor <init>(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;Landroid/os/Handler;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    iput-object p2, p0, Lndd;->a:Landroid/os/Handler;

    iput-object p3, p0, Lndd;->b:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 290
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->c(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)I

    .line 292
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->d(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p0, Lndd;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 297
    :pswitch_1
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->e(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-virtual {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ace

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lndd;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->e(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-virtual {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090af0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lndd;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->a(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;I)I

    .line 305
    iget-object v0, p0, Lndd;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->j()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lndd;->c:Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-static {v0}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;)Lndw;

    move-result-object v0

    invoke-interface {v0}, Lndw;->g()V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
