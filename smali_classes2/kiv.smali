.class Lkiv;
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
    .line 266
    iput-object p1, p0, Lkiv;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 274
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lkiv;->a:Lkip;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkip;->a(Lkip;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lkiv;->a:Lkip;

    invoke-static {v0}, Lkip;->a(Lkip;)Lkio;

    move-result-object v0

    invoke-interface {v0}, Lkio;->i()V

    .line 279
    :cond_0
    return-void
.end method
