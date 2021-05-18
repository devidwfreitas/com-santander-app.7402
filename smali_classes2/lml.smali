.class Llml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Llmi;


# direct methods
.method constructor <init>(Llmi;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Llml;->a:Llmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Llml;->a:Llmi;

    invoke-static {v0, p1, p0}, Llmi;->a(Llmi;Landroid/text/Editable;Landroid/text/TextWatcher;)V

    .line 214
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
