.class public Liqx;
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
    .line 471
    iput-object p1, p0, Liqx;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Liqx;->a:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    check-cast p1, Lfss;

    invoke-static {v0, p1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lfss;)Lfss;

    .line 475
    return-void
.end method
