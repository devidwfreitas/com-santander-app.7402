.class public Lhtz;
.super Lgyc;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "cardPreferences"

.field private static final d:Ljava/lang/String; = "prefs_carrinho_cp_cpf"

.field private static e:Lhtz;


# instance fields
.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lgyc;-><init>()V

    .line 35
    invoke-static {}, Lcom/santander/app/MinhaConta;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhtz;->f:Landroid/content/Context;

    .line 36
    const-string v0, "cardPreferences"

    const-string v1, "prefs_carrinho_cp_cpf"

    invoke-virtual {p0, v0, v1}, Lhtz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lgwq;->carrinhoCP:Lgwq;

    invoke-virtual {p0, v0}, Lhtz;->a(Lgwq;)V

    .line 38
    return-void
.end method

.method public static h()Lhtz;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lhtz;->e:Lhtz;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lhtz;

    invoke-direct {v0}, Lhtz;-><init>()V

    sput-object v0, Lhtz;->e:Lhtz;

    .line 31
    :cond_0
    sget-object v0, Lhtz;->e:Lhtz;

    return-object v0
.end method


# virtual methods
.method public g()Lgta;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lgta;

    invoke-direct {v0}, Lgta;-><init>()V

    .line 43
    iget-object v1, p0, Lhtz;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgta;->b(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lgwq;->carrinhoCP:Lgwq;

    invoke-virtual {v0, v1}, Lgta;->a(Lgwq;)V

    .line 45
    invoke-virtual {v0, v3}, Lgta;->a(Ljava/lang/String;)V

    .line 46
    const v1, 0x7f0204c9

    invoke-virtual {v0, v1}, Lgta;->a(I)V

    .line 47
    const v1, 0x7f0204cd

    invoke-virtual {v0, v1}, Lgta;->b(I)V

    .line 48
    const v1, 0x7f0204cb

    invoke-virtual {v0, v1}, Lgta;->c(I)V

    .line 49
    invoke-virtual {v0, v3}, Lgta;->c(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v3}, Lgta;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v3}, Lgta;->e(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method
