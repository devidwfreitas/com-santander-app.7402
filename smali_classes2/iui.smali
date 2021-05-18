.class public Liui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lguh;


# instance fields
.field final synthetic a:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Liui;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Adapter;Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 324
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lirz;

    .line 325
    const-string v1, "Login_Acao"

    const-string v2, "SelecionarApp"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "Login_APP"

    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lirz;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Liui;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v1}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Liun;->a(Lirz;Landroid/view/View;I)V

    .line 328
    return-void
.end method
