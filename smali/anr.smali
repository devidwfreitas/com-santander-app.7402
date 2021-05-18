.class public Lanr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;


# direct methods
.method public constructor <init>(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lanr;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lanr;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v0}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->a(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lanr;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v1}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->c(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Lanu;

    move-result-object v1

    iget-object v2, p0, Lanr;->a:Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;

    invoke-static {v2}, Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;->b(Lbr/com/santander/uisdk/search/presentation/SantanderViewSearchActivity;)Lanp;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lanu;->a(Ljava/lang/String;Lanp;)V

    .line 52
    return-void
.end method
