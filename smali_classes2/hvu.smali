.class public Lhvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lhvu;->a:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lhvu;->a:Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;->a(Lcom/santander/app/emprestimo/creditounificado/presentation/CPUContratacaoActivity;)Lhwb;

    move-result-object v0

    invoke-interface {v0, p2}, Lhwb;->a(Z)V

    .line 130
    return-void
.end method
