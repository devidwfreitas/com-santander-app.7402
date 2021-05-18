.class public Lhxh;
.super Lgyc;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "prefs_cpu_carrinho_abandono"

.field private static final d:Ljava/lang/String; = "prefs_cpu_carrinho_cpf"

.field private static e:Lhxh;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lgyc;-><init>()V

    .line 32
    const-string v0, "prefs_cpu_carrinho_abandono"

    const-string v1, "prefs_cpu_carrinho_cpf"

    invoke-virtual {p0, v0, v1}, Lhxh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lgwq;->creditounificado:Lgwq;

    invoke-virtual {p0, v0}, Lhxh;->a(Lgwq;)V

    .line 34
    return-void
.end method

.method public static h()Lhxh;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lhxh;->e:Lhxh;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lhxh;

    invoke-direct {v0}, Lhxh;-><init>()V

    sput-object v0, Lhxh;->e:Lhxh;

    .line 27
    :cond_0
    sget-object v0, Lhxh;->e:Lhxh;

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
    iget-object v1, p0, Lhxh;->a:Landroid/content/Context;

    const v2, 0x7f090334

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lgwq;->creditounificado:Lgwq;

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

    .line 48
    return-object v0
.end method
