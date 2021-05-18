.class public Lhbr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbv;


# static fields
.field private static a:Lhbr;


# instance fields
.field private b:Lmip;

.field private c:Lhce;

.field private d:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lhbr;->b:Lmip;

    .line 46
    new-instance v0, Lhce;

    invoke-direct {v0, p0}, Lhce;-><init>(Lhbv;)V

    iput-object v0, p0, Lhbr;->c:Lhce;

    .line 47
    return-void
.end method

.method public static a()Lhbr;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lhbr;->a:Lhbr;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lhbr;

    invoke-direct {v0}, Lhbr;-><init>()V

    sput-object v0, Lhbr;->a:Lhbr;

    .line 41
    :cond_0
    sget-object v0, Lhbr;->a:Lhbr;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lhbr;->b()V

    .line 95
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lhbr;->d:Landroid/app/Dialog;

    .line 96
    return-void
.end method

.method private a(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 74
    invoke-direct {p0, p1}, Lhbr;->a(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lhbr;->c:Lhce;

    invoke-virtual {v0, p1, p2}, Lhce;->a(Landroid/content/Context;Lhbp;)V

    goto :goto_0

    .line 62
    :sswitch_0
    const-string v2, "investimentosCDB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "investimentosFundos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 64
    :pswitch_0
    check-cast p1, Landroid/app/Activity;

    const-string v0, "investimentosCDB"

    invoke-static {p1, v0}, Ljcw;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    check-cast p1, Landroid/app/Activity;

    const-string v0, "investimentosFundos"

    invoke-static {p1, v0}, Ljcw;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        -0x32b521 -> :sswitch_1
        0x19c0e86b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lhbr;->d:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lhbr;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090ac0

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 111
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lhbp;

    invoke-direct {v0, p2}, Lhbp;-><init>(Landroid/net/Uri;)V

    .line 56
    invoke-direct {p0, p1, v0}, Lhbr;->a(Landroid/content/Context;Lhbp;)V

    .line 57
    return-void
.end method

.method public a(Landroid/content/Context;Lhbu;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lhbr;->b()V

    .line 83
    if-nez p2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p2, Lhbu;->b:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p2, Lhbu;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lhbr;->b:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p2, Lhbu;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lhbr;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lhbs;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Lhbp;

    invoke-direct {v0, p2}, Lhbp;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, v0}, Lhbr;->a(Landroid/content/Context;Lhbp;)V

    .line 52
    return-void
.end method
