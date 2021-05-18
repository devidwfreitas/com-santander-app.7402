.class public Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static final a:I = 0x64


# instance fields
.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->b:Landroid/widget/LinearLayout;

    .line 39
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lhqz;

    invoke-direct {v1, p0}, Lhqz;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->b(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 52
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->i:Landroid/app/Activity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 57
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 59
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    const v3, 0x7f09016b

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v4, Lhra;

    invoke-direct {v4, p0, v1, p1}, Lhra;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    .line 73
    const v0, 0x7f09016a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v5, Lhrb;

    invoke-direct {v5, p0, v1}, Lhrb;-><init>(Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;Landroid/app/Dialog;)V

    .line 81
    iget-object v0, p0, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->i:Landroid/app/Activity;

    const v2, 0x7f090aac

    invoke-virtual {p0, v2}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090133

    invoke-virtual {p0, v3}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 83
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f090a9e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->c(I)V

    .line 34
    invoke-direct {p0}, Lcom/santander/app/emprestimo/creditopessoal/presentation/ConsignadoChatActivity;->a()V

    .line 35
    return-void
.end method
