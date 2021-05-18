.class Lkhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lkhl;


# direct methods
.method constructor <init>(Lkhl;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lkhn;->a:Lkhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lkhn;->a:Lkhl;

    invoke-static {v0}, Lkhl;->a(Lkhl;)Lkie;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkie;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method
