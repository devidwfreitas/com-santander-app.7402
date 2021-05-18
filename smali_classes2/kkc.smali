.class Lkkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lkjo;


# direct methods
.method constructor <init>(Lkjo;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lkkc;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 348
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lkkc;->a:Lkjo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkjo;->d(Lkjo;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lkkc;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->n()V

    .line 352
    :cond_0
    return-void
.end method
