.class public Liys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Liys;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 192
    if-nez p2, :cond_0

    .line 193
    iget-object v0, p0, Liys;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Ljal;

    move-result-object v0

    iget-object v1, p0, Liys;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    .line 194
    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liys;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v2}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->d(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-interface {v0, v1, v2}, Ljal;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method
