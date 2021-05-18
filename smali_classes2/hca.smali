.class Lhca;
.super Lhbt;
.source "SourceFile"


# instance fields
.field private b:Lhya;


# direct methods
.method constructor <init>(Lhbv;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lhbt;-><init>(Lhbv;)V

    .line 32
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    iput-object v0, p0, Lhca;->b:Lhya;

    .line 33
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 2
    .param p2    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-static {}, Lhyb;->j()Lhya;

    move-result-object v0

    .line 62
    new-instance v1, Lhcd;

    invoke-direct {v1, p0, p3, p1}, Lhcd;-><init>(Lhca;Ljava/lang/Runnable;Landroid/content/Context;)V

    invoke-interface {v0, p2, v1}, Lhya;->a(ILhxy;)V

    .line 78
    return-void
.end method

.method static synthetic a(Lhca;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lhca;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "DeepLink_Emprestimos"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic b(Lhca;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lhca;->d(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "DeepLink_Renegociacao"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 81
    invoke-virtual {p0}, Lhca;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lhca;->b(Landroid/content/Context;)V

    .line 101
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lhca;->b()V

    .line 88
    iget-object v0, p0, Lhca;->b:Lhya;

    invoke-interface {v0}, Lhya;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 100
    :goto_1
    iget-object v1, p0, Lhca;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lhca;->b:Lhya;

    invoke-interface {v0}, Lhya;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhca;->b:Lhya;

    invoke-interface {v0}, Lhya;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/emprestimo/creditopessoal/presentation/CPSimulacaoActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v0, "extra_type_emprestimo"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    .line 96
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    const-string v0, "EXTRA_TYPE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v0, 0xc

    .line 104
    invoke-virtual {p0}, Lhca;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lhca;->b(Landroid/content/Context;)V

    .line 126
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lhca;->c()V

    .line 111
    iget-object v1, p0, Lhca;->b:Lhya;

    invoke-interface {v1}, Lhya;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/emprestimo/acordo/presentation/AcordoSimulacaoActivity;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 125
    :goto_1
    iget-object v1, p0, Lhca;->a:Lhbv;

    invoke-interface {v1, p1, v0}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lhca;->b:Lhya;

    invoke-interface {v1}, Lhya;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/emprestimo/creditounificado/presentation/CPUSimulacaoActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v2, "extra_type_emprestimo"

    iget-object v3, p0, Lhca;->b:Lhya;

    .line 117
    invoke-interface {v3}, Lhya;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    :cond_2
    const/16 v0, 0xd

    goto :goto_2

    .line 121
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v2, "EXTRA_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    new-instance v0, Lhbu;

    invoke-direct {v0, v1}, Lhbu;-><init>(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_1
    return-void

    .line 37
    :sswitch_0
    const-string v2, "emprestimos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "renegociacao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 39
    :pswitch_0
    const/4 v0, 0x3

    new-instance v1, Lhcb;

    invoke-direct {v1, p0, p1}, Lhcb;-><init>(Lhca;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lhca;->a(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 48
    :pswitch_1
    const/16 v0, 0xc

    new-instance v1, Lhcc;

    invoke-direct {v1, p0, p1}, Lhcc;-><init>(Lhca;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lhca;->a(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_1

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        -0x74a30b5c -> :sswitch_0
        0xc365148 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
