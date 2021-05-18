.class public Liqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgla;


# instance fields
.field final synthetic a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Liqv;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Liqv;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    iget-object v1, p0, Liqv;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->b(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;I)I

    .line 444
    return-void
.end method
