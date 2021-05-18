.class public Lhgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lhgq;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-static {}, Lhhr;->i()V

    .line 112
    :cond_0
    iget-object v0, p0, Lhgq;->a:Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;

    invoke-static {v0}, Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;->a(Lcom/santander/app/emprestimo/acordo/presentation/AcordoContratacaoActivity;)Lhgy;

    move-result-object v0

    invoke-interface {v0, p2}, Lhgy;->a(Z)V

    .line 113
    return-void
.end method
