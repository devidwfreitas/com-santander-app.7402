.class public Lfnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/santander/app/SaldoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/SaldoActivity;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lfnk;->a:Lcom/santander/app/SaldoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lfnk;->a:Lcom/santander/app/SaldoActivity;

    invoke-virtual {v0, p1}, Lcom/santander/app/SaldoActivity;->goEmprestimos(Landroid/view/View;)V

    .line 584
    return-void
.end method
