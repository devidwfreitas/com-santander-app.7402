.class Lkiw;
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
    .line 289
    iput-object p1, p0, Lkiw;->a:Lkip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lkiw;->a:Lkip;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkip;->b(Lkip;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    return-void
.end method
