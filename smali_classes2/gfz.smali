.class public Lgfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgfl;


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgfz;->a:Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lgfz;->a:Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)Liex;

    move-result-object v0

    invoke-interface {v0}, Liex;->b()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgfz;->a:Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;

    invoke-static {v1}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    iget-object v1, p0, Lgfz;->a:Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;

    invoke-static {v1}, Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ValidacaoTouchCarteiraDigitalActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
