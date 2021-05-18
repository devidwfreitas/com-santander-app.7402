.class Lllk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lllj;


# direct methods
.method constructor <init>(Lllj;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lllk;->a:Lllj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lllk;->a:Lllj;

    invoke-static {v0}, Lllj;->h(Lllj;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lllk;->a:Lllj;

    invoke-static {v0}, Lllj;->h(Lllj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 225
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
