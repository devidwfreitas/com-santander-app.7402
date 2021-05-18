.class Lita;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lism;


# direct methods
.method constructor <init>(Lism;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lita;->a:Lism;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lita;->a:Lism;

    invoke-static {v0}, Lism;->b(Lism;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lita;->a:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Litf;->a(Ljava/lang/CharSequence;III)V

    .line 369
    :cond_0
    iget-object v0, p0, Lita;->a:Lism;

    invoke-static {v0}, Lism;->c(Lism;)Lcom/santander/app/components/view/SantanderEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lita;->a:Lism;

    invoke-static {v0}, Lism;->a(Lism;)Litf;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Litf;->b(Ljava/lang/CharSequence;III)V

    .line 372
    :cond_1
    return-void
.end method
