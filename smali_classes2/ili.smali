.class Lili;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lilh;


# direct methods
.method constructor <init>(Lilh;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lili;->a:Lilh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 282
    if-eqz p2, :cond_0

    .line 283
    new-instance v0, Lije;

    invoke-direct {v0}, Lije;-><init>()V

    .line 284
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 285
    const-string v2, "listener"

    iget-object v3, p0, Lili;->a:Lilh;

    iget-object v3, v3, Lilh;->a:Likx;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 286
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 287
    iget-object v1, p0, Lili;->a:Lilh;

    iget-object v1, v1, Lilh;->a:Likx;

    invoke-virtual {v1}, Likx;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lili;->a:Lilh;

    iget-object v0, v0, Lilh;->a:Likx;

    invoke-static {v0}, Likx;->i(Likx;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 292
    :cond_0
    return-void
.end method
