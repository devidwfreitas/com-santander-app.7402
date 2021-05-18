.class Lldb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Llcy;


# direct methods
.method constructor <init>(Llcy;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lldb;->a:Llcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lldb;->a:Llcy;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->c(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Llcy;->a(Llcy;Z)Z

    .line 106
    iget-object v0, p0, Lldb;->a:Llcy;

    invoke-static {v0}, Llcy;->e(Llcy;)V

    .line 107
    return-void
.end method
