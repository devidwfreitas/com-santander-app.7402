.class Liks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Likl;


# direct methods
.method constructor <init>(Likl;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Liks;->a:Likl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 326
    iget-object v0, p0, Liks;->a:Likl;

    invoke-static {v0}, Likl;->i(Likl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "."

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v4, "."

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 331
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 336
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Liks;->a:Likl;

    invoke-virtual {v0}, Likl;->a()V

    .line 342
    :goto_1
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    const-string v1, "FazerPagamen...Fragment"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Liks;->a:Likl;

    invoke-virtual {v0}, Likl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "O valor n\u00e3o pode ser R$ 0,00"

    invoke-static {v0, v1}, Lmxn;->d(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_1
.end method
