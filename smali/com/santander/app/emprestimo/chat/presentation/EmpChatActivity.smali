.class public Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Lhnt;


# static fields
.field public static final a:Ljava/lang/String; = "EXTRA_TYPE"


# instance fields
.field private b:Lbr/com/santander/uisdk/error/SantanderErrorView;

.field private c:Lhnu;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Lhnu;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c:Lhnu;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c(Ljava/lang/String;)V

    .line 69
    return-void

    .line 68
    :cond_0
    const v0, 0x7f090ab6

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v1, "EXTRA_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 72
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/error/SantanderErrorView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    .line 73
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setIcon(I)V

    .line 74
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v1, "Fale com nossos especialistas e conhe\u00e7a outras op\u00e7\u00f5es que temos para voc\u00ea."

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextSubTitle(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f090b74

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Lbr/com/santander/uisdk/error/SantanderChatErrorItem;

    new-instance v2, Lhnq;

    invoke-direct {v2, p0}, Lhnq;-><init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)V

    invoke-direct {v1, v0, v2}, Lbr/com/santander/uisdk/error/SantanderChatErrorItem;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const/4 v2, 0x1

    new-array v2, v2, [Lbr/com/santander/uisdk/error/SantanderErrorItem;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->a([Lbr/com/santander/uisdk/error/SantanderErrorItem;)V

    .line 85
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f090a9c

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 140
    packed-switch v1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 142
    :pswitch_1
    const v0, 0x7f090a9e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :pswitch_3
    const v0, 0x7f090a96

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    .line 155
    const-string v1, "CreditoFinanciamento_Antecipar13_Indisponivel_PopupChat_Acao"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->d:Ljava/lang/String;

    .line 156
    const-string v1, "Confirmar"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->e:Ljava/lang/String;

    .line 157
    const-string v1, "Cancelar"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->f:Ljava/lang/String;

    goto :goto_0

    .line 161
    :pswitch_4
    const v0, 0x7f090a97

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    .line 164
    const-string v1, "CreditoFinanciamento_AnteciparIR_Indisponivel_PopupChat_Acao"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->d:Ljava/lang/String;

    .line 165
    const-string v1, "Confirmar"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->e:Ljava/lang/String;

    .line 166
    const-string v1, "Cancelar"

    iput-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :pswitch_5
    const v0, 0x7f090ab7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    :pswitch_6
    const v0, 0x7f0908f7

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b:Lbr/com/santander/uisdk/error/SantanderErrorView;

    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f090a9d

    invoke-virtual {p0, v4}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/com/santander/uisdk/error/SantanderErrorView;->setTextTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 93
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 94
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 98
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 100
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 106
    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v4, Lhnr;

    invoke-direct {v4, p0, v1, p1}, Lhnr;-><init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    .line 118
    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v5, Lhns;

    invoke-direct {v5, p0, v1}, Lhns;-><init>(Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;Landroid/app/Dialog;)V

    .line 130
    iget-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->i:Landroid/app/Activity;

    const v2, 0x7f090aac

    invoke-virtual {p0, v2}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090133

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04005e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->setContentView(I)V

    .line 60
    new-instance v0, Lhnv;

    invoke-direct {v0, p0}, Lhnv;-><init>(Lhnt;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->c:Lhnu;

    .line 62
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->b()V

    .line 63
    invoke-direct {p0}, Lcom/santander/app/emprestimo/chat/presentation/EmpChatActivity;->a()V

    .line 64
    return-void
.end method
