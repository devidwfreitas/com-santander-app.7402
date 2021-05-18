.class public Lhvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhxn;

.field final synthetic b:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;Lhxn;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lhvt;->b:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;

    iput-object p2, p0, Lhvt;->a:Lhxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lhvt;->a:Lhxn;

    invoke-static {v0}, Lhxi;->j(Lhxn;)V

    .line 61
    iget-object v0, p0, Lhvt;->b:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;

    invoke-virtual {v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUComprovanteActivity;->b()V

    .line 62
    return-void
.end method
