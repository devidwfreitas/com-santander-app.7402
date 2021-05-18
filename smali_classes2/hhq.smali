.class public Lhhq;
.super Lgyc;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "prefs_acordo_carrinho_abandono"

.field private static final d:Ljava/lang/String; = "prefs_acordo_carrinho_cpf"

.field private static e:Lhhq;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lgyc;-><init>()V

    .line 32
    const-string v0, "prefs_acordo_carrinho_abandono"

    const-string v1, "prefs_acordo_carrinho_cpf"

    invoke-virtual {p0, v0, v1}, Lhhq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lgwq;->acordoAbandono:Lgwq;

    invoke-virtual {p0, v0}, Lhhq;->a(Lgwq;)V

    .line 34
    return-void
.end method

.method public static h()Lhhq;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lhhq;->e:Lhhq;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lhhq;

    invoke-direct {v0}, Lhhq;-><init>()V

    sput-object v0, Lhhq;->e:Lhhq;

    .line 28
    :cond_0
    sget-object v0, Lhhq;->e:Lhhq;

    return-object v0
.end method


# virtual methods
.method public g()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 39
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090335

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lgwq;->acordoAbandono:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 41
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 42
    const v1, 0x7f0204c9

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 43
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 44
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 45
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 49
    return-object v0
.end method
