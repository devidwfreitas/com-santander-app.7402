.class abstract Lhbt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lhbv;


# direct methods
.method constructor <init>(Lhbv;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lhbt;->a:Lhbv;

    .line 22
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/ServicoIndisponivelActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 33
    iget-object v0, p0, Lhbt;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 34
    return-void
.end method

.method public abstract a(Landroid/content/Context;Lhbp;)V
.end method

.method a()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lmzr;->a()Z

    move-result v0

    return v0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 40
    iget-object v0, p0, Lhbt;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 41
    return-void
.end method
