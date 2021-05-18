.class Lkjz;
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
    .line 273
    iput-object p1, p0, Lkjz;->a:Lkjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 281
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lkjz;->a:Lkjo;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkjo;->a(Lkjo;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lkjz;->a:Lkjo;

    invoke-static {v0}, Lkjo;->a(Lkjo;)Lkjn;

    move-result-object v0

    invoke-interface {v0}, Lkjn;->k()V

    .line 286
    :cond_0
    return-void
.end method
