.class public Liqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Liqd;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Liqd;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iget-object v1, p0, Liqd;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->b(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;I)I

    .line 604
    iget-object v0, p0, Liqd;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lirc;

    move-result-object v0

    invoke-interface {v0}, Lirc;->m()V

    .line 605
    return-void
.end method
