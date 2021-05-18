.class public Liyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Liyp;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Liyp;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;Ljava/lang/Boolean;)V

    .line 145
    iget-object v0, p0, Liyp;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v0}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->a(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Ljal;

    move-result-object v0

    iget-object v1, p0, Liyp;->a:Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;

    invoke-static {v1}, Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;->b(Lcom/santander/app/idsantander/presentation/IdSantanderEscolhaCelularActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljal;->a(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
