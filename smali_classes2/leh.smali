.class public Lleh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmff;


# instance fields
.field final synthetic a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lleh;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 115
    const-string v0, "Seguros_Cancelamento_Residencia_Seletor_Acao"

    const-string v1, "CorrerRisco"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lleh;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    sget-object v1, Llem;->UNSAFE:Llem;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;Llem;)V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llei;

    invoke-direct {v1, p0}, Llei;-><init>(Lleh;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 128
    const-string v0, "Seguros_Cancelamento_Residencia_Seletor_Acao"

    const-string v1, "ProtegerMinhaCasa"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lleh;->a:Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;

    sget-object v1, Llem;->SAFE_SUN:Llem;

    invoke-static {v0, v1}, Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;->a(Lcom/santander/app/seguros/ui/cancellation/activities/CancellationResidenceActivity;Llem;)V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llej;

    invoke-direct {v1, p0}, Llej;-><init>(Lleh;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method
