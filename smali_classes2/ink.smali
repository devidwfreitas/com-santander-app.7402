.class public Link;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Link;->b:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    iput-object p2, p0, Link;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Link;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Link;->b:Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;

    invoke-static {v1}, Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;->a(Lcom/santander/app/habilitacaointernacional/activity/ListarPaisesHabilitacaoActivity;)Lfqh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfqh;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
