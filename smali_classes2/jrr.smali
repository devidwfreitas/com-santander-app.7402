.class public Ljrr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "Seguimento Corrente"

.field private static final d:[Ljava/lang/CharSequence;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljsf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Seguimento Corrente"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "VD"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PR"

    aput-object v2, v0, v1

    sput-object v0, Ljrr;->d:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Ljrr;->a:Landroid/content/Context;

    .line 30
    new-instance v0, Ljsh;

    invoke-direct {v0}, Ljsh;-><init>()V

    iput-object v0, p0, Ljrr;->b:Ljsf;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ljrr;->a:Landroid/content/Context;

    const-class v2, Lcom/santander/app/novidades/view/NovidadesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    iget-object v1, p0, Ljrr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Ljrr;->b:Ljsf;

    new-instance v1, Ljrt;

    invoke-direct {v1, p0, p1}, Ljrt;-><init>(Ljrr;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljsf;->a(Ljava/lang/String;Ljsg;)V

    goto :goto_0
.end method

.method static synthetic a(Ljrr;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljrr;->c()V

    return-void
.end method

.method static synthetic a(Ljrr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljrr;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljrr;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ljrr;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljrr;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Ljrr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Aten\u00e7\u00e3o"

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "O seguimento selecionado n\u00e3o possui novidades."

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 75
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Ljrr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Selecione o seguimento?"

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Ljrr;->d:[Ljava/lang/CharSequence;

    new-instance v2, Ljrs;

    invoke-direct {v2, p0}, Ljrs;-><init>(Ljrr;)V

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 47
    return-void
.end method
