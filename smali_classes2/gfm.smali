.class public Lgfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lgfm;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgfm;->a:Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;

    invoke-static {v0}, Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;->a(Lcom/santander/app/carteiradiaria/presentation/ListagemCarteiraDiariaActivity;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 85
    return-void
.end method
