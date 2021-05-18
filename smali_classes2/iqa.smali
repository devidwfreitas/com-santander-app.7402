.class Liqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lipp;

.field final synthetic b:Lipu;


# direct methods
.method constructor <init>(Lipu;Lipp;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Liqa;->b:Lipu;

    iput-object p2, p0, Liqa;->a:Lipp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Liqa;->b:Lipu;

    invoke-static {v0}, Lipu;->b(Lipu;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqa;->b:Lipu;

    invoke-static {v0}, Lipu;->b(Lipu;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Liqa;->b:Lipu;

    invoke-static {v0}, Lipu;->b(Lipu;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 208
    iget-object v0, p0, Liqa;->b:Lipu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lipu;->a(Lipu;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 210
    :cond_0
    iget-object v0, p0, Liqa;->a:Lipp;

    sget-object v1, Lipp;->BOTAO_PAGAR_FATURA_HOME:Lipp;

    invoke-virtual {v0, v1}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liqa;->a:Lipp;

    sget-object v1, Lipp;->BOTAO_PARCELAR_FATURA_HOME:Lipp;

    invoke-virtual {v0, v1}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liqa;->a:Lipp;

    sget-object v1, Lipp;->BOTAO_PAGAR_CONTA_HOME:Lipp;

    invoke-virtual {v0, v1}, Lipp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    :cond_1
    iget-object v0, p0, Liqa;->b:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    iget-object v1, p0, Liqa;->a:Lipp;

    invoke-interface {v0, v1}, Lipt;->a(Lipp;)V

    .line 216
    :goto_0
    invoke-static {}, Lgpu;->a()V

    .line 217
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Liqa;->b:Lipu;

    invoke-static {v0}, Lipu;->a(Lipu;)Lipt;

    move-result-object v0

    invoke-interface {v0}, Lipt;->b()V

    goto :goto_0
.end method
