.class public Lgfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/widget/DatePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 122
    iget-object v0, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->e(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 123
    iget-object v0, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->e(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->f(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->d(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lggh;

    move-result-object v0

    iget-object v1, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v1}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->b(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Lcom/santander/app/contacorrente/domain/Conta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/santander/app/contacorrente/domain/Conta;->getIndexConta()I

    move-result v1

    iget-object v2, p0, Lgfo;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v2}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->c(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lggh;->a(ILjava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method
