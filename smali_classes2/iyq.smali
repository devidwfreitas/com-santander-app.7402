.class public Liyq;
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
    .line 162
    iput-object p1, p0, Liyq;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    iget-object v0, p0, Liyq;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Ljal;

    move-result-object v0

    iget-object v1, p0, Liyq;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->c(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Landroid/widget/EditText;)V

    .line 168
    :cond_0
    return-void
.end method
