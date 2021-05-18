.class public Lgpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/santander/app/components/view/ClickToSelectEditText;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/ClickToSelectEditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lgpc;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    iput-object p2, p0, Lgpc;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lgpc;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lgpc;->b:Lcom/santander/app/components/view/ClickToSelectEditText;

    invoke-static {v1, v0}, Lcom/santander/app/components/view/ClickToSelectEditText;->a(Lcom/santander/app/components/view/ClickToSelectEditText;Ljava/lang/String;)V

    .line 210
    return-void
.end method
