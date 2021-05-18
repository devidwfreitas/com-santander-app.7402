.class Lldc;
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
    .line 114
    iput-object p1, p0, Lldc;->a:Llcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lldc;->a:Llcy;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Llcy;->b(Llcy;Z)Z

    .line 123
    iget-object v0, p0, Lldc;->a:Llcy;

    invoke-static {v0}, Llcy;->e(Llcy;)V

    .line 124
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
