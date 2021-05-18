.class public Llea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmff;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 301
    const-string v0, "Seguros_Cancelamento_Vida_AP_Seletor_Acao"

    const-string v1, "CorrerRisco"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    sget-object v1, Lleg;->UNSAFE:Lleg;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lleg;)V

    .line 303
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->f(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Llet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->f(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Llet;

    move-result-object v0

    invoke-virtual {v0}, Llet;->a()V

    .line 306
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lleb;

    invoke-direct {v1, p0}, Lleb;-><init>(Llea;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 316
    const-string v0, "Seguros_Cancelamento_Vida_AP_Seletor_Acao"

    const-string v1, "ProtegerMinhaFamilia"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    sget-object v1, Lleg;->SAFE_SUN:Lleg;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->a(Lleg;)V

    .line 318
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->f(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Llet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Llea;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;->f(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationLifeActivity;)Llet;

    move-result-object v0

    invoke-virtual {v0}, Llet;->b()V

    .line 321
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llec;

    invoke-direct {v1, p0}, Llec;-><init>(Llea;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method
