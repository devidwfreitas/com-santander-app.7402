.class public Liyt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Liyt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 204
    :cond_1
    iget-object v1, p0, Liyt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Ljal;

    move-result-object v1

    iget-object v2, p0, Liyt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    .line 205
    invoke-static {v2}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Liyt;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v3}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->d(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-interface {v1, v2, v3}, Ljal;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
