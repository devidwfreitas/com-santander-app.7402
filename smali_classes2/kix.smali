.class Lkix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lkip;


# direct methods
.method constructor <init>(Lkip;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lkix;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 316
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lkix;->a:Lkip;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkip;->c(Lkip;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lkix;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->k()V

    .line 320
    :cond_0
    return-void
.end method
