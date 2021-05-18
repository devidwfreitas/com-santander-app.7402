.class public Liuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lala;


# instance fields
.field final synthetic a:Lcom/santander/app/homenaologada/presentation/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homenaologada/presentation/HomeActivity;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Liuc;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Liuc;->a:Lcom/santander/app/homenaologada/presentation/HomeActivity;

    invoke-static {v0}, Lcom/santander/app/homenaologada/presentation/HomeActivity;->a(Lcom/santander/app/homenaologada/presentation/HomeActivity;)Liun;

    move-result-object v0

    invoke-interface {v0}, Liun;->k()V

    .line 677
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 681
    if-eqz p1, :cond_0

    instance-of v0, p1, Lalh;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 682
    check-cast v0, Lalh;

    invoke-static {v0}, Lmyn;->a(Lalh;)V

    .line 683
    check-cast p1, Lalh;

    invoke-static {p1}, Lmyn;->b(Lalh;)V

    .line 685
    :cond_0
    return-void
.end method
